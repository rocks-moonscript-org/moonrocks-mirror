rockspec_format = "3.0"
package = "stringstream"
version = "0.1.0-1"
source = {
    url = "git://github.com/gilzoide/stringstream-lua",
    tag = "0.1.0",
}
description = {
    summary = "An object that loads chunks of strings on demand compatible with a subset of the Lua string API suitable for parsing",
    detailed = [[
An object that loads chunks of strings on demand compatible with a subset of the Lua string API suitable for parsing.

This is meant to be used to pass streams (e.g.: files) to parser functionality that expects strings and use method notation (`text:match(...)`).

Supported methods and metamethods:
==================================
- __tostring:
  Returns the current loaded content string.

- __len, len:
  Returns the length of the current loaded content.
  This is probably only useful to check for end of contents with `#stream == 0`, as it almost never reflects the entire contents length.

- sub:
  If both `i` and `j` are passed, returns the string that starts at `i` and continues until `j`.
  If only `i` is passed, returns a new view into stream with starting index `i`. 
  Loads contents from stream if necessary.
  Negative indices are not supported.

- find:
  Try finding pattern on loaded contents. Upon failure or repetition items that match the whole string, loads new chunks and try again.
  Number of retries will be parameterizable upon creation.
  Negative indices are not supported.

- match:
  Try matching pattern on loaded contents. Upon failure or repetition items that match the whole string, loads new chunks and try again.
  Number of retries will be parameterizable upon creation.
  Negative indices are not supported.

- gmatch:
  Returns an iterator function that, each time it is called, returns the next match from loaded contents. On iteration end or repetition items that match the whole string, loads new chunks and retry.
  Number of retries will be parameterizable upon creation.
  Negative indices are not supported.
]],
    license = "Unlicense",
    maintainer = "gilzoide <gilzoide@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        stringstream = "stringstream.lua",
    },
}
test = {
    type = "busted",
}
