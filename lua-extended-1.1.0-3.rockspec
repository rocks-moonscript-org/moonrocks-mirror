package = "lua-extended"
version = "1.1.0-3"
source = {
    url = "git+https://gitlab.com/stote/lua-extended",
}
description = {
    summary = "Extensions for Lua 5.1 and LuaJIT standard library",
    detailed = [[Lua extended is a library that extends the Lua standard library by adding utility functions to the
various modules defined under the `_G.*` namespace, in other words it implements additional convenience
functionalities enhancing the capabilities of the Lua and LuaJIT standard library, while providing
a seamless integration with existing codebases.

Note: Make sure to check the compatibility of Lua extended with your Lua version as it as been
written with Lua 5.1 and LuaJIT 2.1.0-beta3 in mind.]],
    homepage = "https://gitlab.com/stote/lua-extended",
    license = "MIT",
}
dependencies = {
    "lua 5.1",
    "inspect 3.1.3-0",
    "tprint 0.3-3",
    "lua-tinyyaml 1.0-0",
    "lua-toml 2.0-1",
    "rxi-json-lua e1dbe93-0",
}
build = {
    type = "builtin",
    modules = {
        ["lua-extended._G.module"] = "lua-extended/_G/module.lua",
        ["lua-extended.bit.module"] = "lua-extended/bit/module.lua",
        ["lua-extended.debug.module"] = "lua-extended/debug/module.lua",
        ["lua-extended.ffi.module"] = "lua-extended/ffi/module.lua",
        ["lua-extended.init"] = "lua-extended/init.lua",
        ["lua-extended.io.module"] = "lua-extended/io/module.lua",
        ["lua-extended.math.module"] = "lua-extended/math/module.lua",
        ["lua-extended.os.module"] = "lua-extended/os/module.lua",
        ["lua-extended.package.module"] = "lua-extended/package/module.lua",
        ["lua-extended.string.module"] = "lua-extended/string/module.lua",
        ["lua-extended.table.module"] = "lua-extended/table/module.lua",
        ["lua-extended.utf8.module"] = "lua-extended/utf8/module.lua",
    },
}
