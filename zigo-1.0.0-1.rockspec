rockspec_format = "3.0"
package = "zigo"
version = "1.0.0-1"

source = {
    url = "git+https://github.com/wewesss/zigo.git",
    tag = "v1.0.0",
}

description = {
    summary  = "Zod-like data validator for Lua 5.1-5.4 and LuaJIT.",
    detailed = [[
zigo keeps the Lua side of every boundary: SQL rows, FFI returns, network
packets, config and user input go through a schema that checks the value and
returns a safe one. Immutable fluent API, structured deterministic errors,
codegen for the valid path, network limits, 64-bit integers, UTF-8, cdata and
NULL sentinels, LuaCATS annotations, and direct interop with matchigo-lua.
Zero dependency.
]],
    homepage   = "https://github.com/wewesss/zigo",
    license    = "MIT",
    maintainer = "SUP2Ak <cormier.wesley@gmail.com>",
    labels     = { "validation", "schema", "validator", "zod" },
    issues_url = "https://github.com/wewesss/zigo/issues",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["zigo"]             = "zigo/init.lua",
        ["zigo.util.compat"] = "zigo/util/compat.lua",
        ["zigo.errors"]               = "zigo/errors.lua",
        ["zigo.limits"]               = "zigo/limits.lua",
        ["zigo.null"]                 = "zigo/null.lua",
        ["zigo.compile.context"]      = "zigo/compile/context.lua",
        ["zigo.node"]                 = "zigo/node.lua",
        ["zigo.compile.closures"]     = "zigo/compile/closures.lua",
        ["zigo.compile.codegen"]      = "zigo/compile/codegen.lua",
        ["zigo.compile.parse"]        = "zigo/compile/parse.lua",
        ["zigo.types.primitives"]     = "zigo/types/primitives.lua",
        ["zigo.types.fixed"]          = "zigo/types/fixed.lua",
        ["zigo.types.int64"]          = "zigo/types/int64.lua",
        ["zigo.types.boundary"]       = "zigo/types/boundary.lua",
        ["zigo.types.native"]         = "zigo/types/native.lua",
        ["zigo.types.array"]          = "zigo/types/array.lua",
        ["zigo.types.object"]         = "zigo/types/object.lua",
        ["zigo.types.coerce"]         = "zigo/types/coerce.lua",
        ["zigo.types.tuple"]          = "zigo/types/tuple.lua",
        ["zigo.types.record"]         = "zigo/types/record.lua",
        ["zigo.types.union"]          = "zigo/types/union.lua",
        ["zigo.types.lazy"]           = "zigo/types/lazy.lua",
    },
    copy_directories = { "docs", "types" },
}

test = {
    type    = "command",
    command = "lua tests/run.lua",
}
