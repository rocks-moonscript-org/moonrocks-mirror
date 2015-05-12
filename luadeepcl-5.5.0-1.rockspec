package = "LuaDeepCL"
version = "5.5.0-1"
source = {
    url = "http://deepcl/hughperkins.com/LuaDeepCL-5.5.0-1.tar.gz"
}
description = {
    summary = "LuaDeepCL.",
    detailed = [[
       Convolutional network library using OpenCL
    ]],
    homepage = "https://github.com/hughperkins/DeepCL",
    license = "MPL"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "cmake",
    variables = {
        USING_LUAROCKS = 1
    },
    install = {
        lua = {
            ['luaunit'] = 'thirdparty/luaunit/luaunit.lua'
        },
        bin = {
            ['test_deepcl'] = 'test_deepcl.lua',
            ['test_qlearning'] = 'test_qlearning.lua'
        },
        lib = {
            ["."] = "build.luarocks/LuaDeepCL.dll",
            ["."] = "build.luarocks/LuaDeepCL.so"
        }
    }
}

