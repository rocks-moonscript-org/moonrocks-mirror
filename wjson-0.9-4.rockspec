package = "wjson"
version = "0.9-4"
source = {
   url = "git+https://github.com/winterstream/wjson.git",
   tag = "v0.9-4"
}
description = {
   summary = "A fast and conformant JSON library for Lua",
   detailed = [==[
wjson
=====

`wjson` is a strict, single-file JSON library-and the fastest pure-Lua option
in our LuaJIT benchmarks. It has no native dependencies and supports LuaJIT and
PUC Lua 5.2-5.5.

Why use wjson
-------------

- It runs in environments where installing a C module is difficult, such as
  embedded systems, game engines, and Neovim plugins.
- The decoder validates JSON strings end to end. Of the libraries tested below,
  only `wjson` rejected every malformed raw UTF-8 case. It also rejects malformed
  Unicode escapes and unescaped control characters.
- `decode_next` parses consecutive JSON values from one string without slicing
  the input.
- The encoder supports custom serialization through `__tojson` and accepts a
  reusable buffer for repeated encodes.

`wjson` is not the fastest choice on every Lua runtime. On PUC Lua 5.4 and 5.5,
`lunajson` may be faster. If native modules are acceptable, `lua-cjson` will
usually be faster for large inputs. Those libraries do not check raw UTF-8
bytes, so validate input separately when that matters.

Comparison
----------

The repository includes benchmarks against other JSON libraries. On LuaJIT,
those benchmarks have put `wjson` 2x-5x ahead of `lunajson` and `dkjson`. On PUC
Lua 5.4 and 5.5, `lunajson` may be faster.

+---------------+----------------+--------------+----------+---------------+-----------+------------------+---------------------------------------------------------+
| Library       | Implementation | Dependencies | One file | Raw UTF-8     | Streaming | Compatibility    | Notes                                                   |
+---------------+----------------+--------------+----------+---------------+-----------+------------------+---------------------------------------------------------+
| wjson         | Pure Lua       | None         | Yes      | Validated     | Yes       | LuaJIT, 5.2-5.5  | UTF-8 validation; custom serialization                  |
| lunajson      | Pure Lua       | None         | No       | Not validated | SAX mode  | LuaJIT, 5.1-5.5  | Often faster on PUC Lua 5.4-5.5                         |
| rxi/json.lua  | Pure Lua       | None         | Yes      | Not validated | No        | LuaJIT, 5.1-5.5  | Small API                                               |
| dkjson        | Pure Lua       | None         | Yes      | Not validated | Yes       | LuaJIT, 5.1-5.5  | Configurable metatables                                 |
| dkjson + LPeg | Hybrid         | LPeg         | No       | Not validated | Yes       | LuaJIT, 5.1-5.5* | Faster on PUC Lua; slower on LuaJIT in these benchmarks |
| lua-cjson     | C extension    | C compiler   | No       | Not validated | No        | LuaJIT, 5.1-5.5* | Usually fastest for large inputs                        |
+---------------+----------------+--------------+----------+---------------+-----------+------------------+---------------------------------------------------------+

`Not validated` means the library accepts malformed raw UTF-8 inside a JSON
string. It says nothing about `\uXXXX` escape handling.

Installation
------------

Install with LuaRocks:

    luarocks install wjson

Or download the single-file distribution from the
latest GitHub release (https://github.com/winterstream/wjson/releases/latest):

    curl -fsSL -o wjson.lua \
      https://github.com/winterstream/wjson/releases/latest/download/wjson.lua

Releases also contain the source rock and SHA-256 checksums.

API
---

wjson.encode(value[, buffer])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Encodes a Lua value as JSON. Lua `nil` and `wjson.null` become `null`. NaN and
positive or negative infinity also become `null`. Strings, numbers, booleans,
and tables are supported. Tables are encoded as arrays or objects; see
Arrays and objects.

Pass a table as `buffer` when encoding repeatedly. The buffer is cleared after
`encode` returns.

Tables may define an `__tojson` metamethod for custom serialization. It must
return a complete JSON value as a string, or `nil`/`false` and an error message.
The returned JSON is inserted verbatim.

    local wjson = require("wjson")

    local point = setmetatable({x = 3, y = 4}, {
        __tojson = function(value)
            return ('{"x":%d,"y":%d}'):format(value.x, value.y)
        end,
    })

    print(wjson.encode(point)) -- {"x":3,"y":4}

    local wjson = require("wjson")

    local data = {
        name = "wjson",
        loves_json = true,
        features = {"fast", "correct", "pure lua"},
        version = 0.1,
        other = wjson.null,
    }

    local json_string = wjson.encode(data)
    print(json_string)
    -- For example: {"name":"wjson","loves_json":true,"features":["fast","correct","pure lua"],"version":0.1,"other":null}

wjson.decode(json_string)
~~~~~~~~~~~~~~~~~~~~~~~~~

Decodes one JSON value. Surrounding whitespace is allowed; other trailing
characters cause an error. JSON `null` becomes `wjson.null`.

    local wjson = require("wjson")

    local data = wjson.decode('{"name":"wjson","features":["fast","correct"]}')

    print(data.name) -- wjson
    print(data.features[1]) -- fast

wjson.decode_next(json_string[, len[, pos]])
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Decodes the next value starting at `pos` and returns the value and the position
immediately after it. `len` defaults to the string length and `pos` defaults
to 1. Use the returned position to continue through a buffer containing several
values.

    local wjson = require("wjson")
    local input = '"one" "two"'

    local value, pos = wjson.decode_next(input)
    print(value) -- one

    value, pos = wjson.decode_next(input, #input, pos)
    print(value) -- two

wjson.null
~~~~~~~~~~

A sentinel for JSON `null`. Use it when a table must distinguish `null` from a
missing key.

Arrays and objects
~~~~~~~~~~~~~~~~~~

A table is encoded as an array when its keys are the integer sequence `1..n`.
Other tables are encoded as objects. An empty table is an object unless you mark
it as an array.

    local wjson = require("wjson")

    print(wjson.encode({10, 20, 30}))
    -- [10,20,30]

    print(wjson.encode({x = 1, y = 2}))
    -- The order of object keys is not defined.

    local empty_array = wjson.empty_array()
    print(wjson.encode(empty_array))
    -- []

    -- You can also mark an existing table.
    local values = setmetatable({}, wjson.array_mt)

Compatibility and validation
----------------------------

`wjson` supports LuaJIT and PUC Lua 5.2, 5.3, 5.4, and 5.5. It does not support
PUC Lua 5.1 because it uses Lua 5.2+ `load` semantics and standard bitwise
facilities.

The test suite includes the JSONTestSuite and checks for malformed UTF-8,
invalid Unicode escapes, and unescaped control characters. CI runs the suite on
all five supported runtimes and lints the rockspec.

UTF-8 validation
~~~~~~~~~~~~~~~~

We ran 119 cases from `spec/unicode_spec.lua`, `spec/utf8_validation_spec.lua`,
and the Unicode sections of `spec/adversarial_spec.lua` against the libraries
above. The results were the same on LuaJIT, Lua 5.4, and Lua 5.5. A raised error
or a `nil`/error return counts as rejection.

+---------------+---------------------+--------------------------+--------------------+
| Library       | Malformed raw UTF-8 | Malformed \uXXXX escapes | Unescaped controls |
+---------------+---------------------+--------------------------+--------------------+
| wjson         | 26/26 rejected      | 17/17 rejected           | 32/32 rejected     |
| lunajson      | 0/26 rejected       | 17/17 rejected           | 32/32 rejected     |
| rxi/json.lua  | 0/26 rejected       | 12/17 rejected           | 32/32 rejected     |
| dkjson        | 0/26 rejected       | 0/17 rejected            | 0/32 rejected      |
| dkjson + LPeg | 0/26 rejected       | 12/17 rejected           | 30/32 rejected     |
| lua-cjson     | 0/26 rejected       | 17/17 rejected           | 31/32 rejected     |
+---------------+---------------------+--------------------------+--------------------+

The run used dkjson 2.11, rxi/json.lua 0.1.2, lunajson 1.2.3-1, lua-cjson 2.1.0,
and LPeg 1.1.0.

Benchmarks
----------

Run the benchmark arena without installing Lua or its dependencies:

    # Default: LuaJIT
    docker run --rm -it ghcr.io/winterstream/wjson

    # PUC Lua 5.5
    docker run --rm -it ghcr.io/winterstream/wjson --lua55

    # PUC Lua 5.4
    docker run --rm -it ghcr.io/winterstream/wjson --lua54

    # Fewer iterations
    docker run --rm -it ghcr.io/winterstream/wjson --quick

The arena compares `wjson` with pure-Lua parsers and, when available, native
modules across synthetic payloads and real-world datasets.

Development
-----------

Run the tests with `busted` or `nix` installed:

    ./run_tests.sh

For changes to performance-sensitive code, also run `bench/bench.lua`.

License
-------

BSD 3-Clause. See LICENSE.
   ]==],
   homepage = "https://github.com/winterstream/wjson",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2"
}
build = {
   type = "builtin",
   modules = {
      wjson = "src/wjson.lua"
   }
}
