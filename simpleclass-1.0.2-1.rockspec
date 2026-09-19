rockspec_format = "3.0"

package = "simpleclass"
version = "1.0.2-1"

source = {
    url = "git+https://github.com/blanhhy/LuaSimpleClass",
    tag = "v1.0.2",
}

description = {
    summary = "Modern & lightweight Lua OOP lib, without fighting static analyzers",
    detailed = [[
Lua SimpleClass is a modern-style, purely Lua-based OOP library with concise syntax and deep compatibility with the static analysis features of lua-language-server (sumneko.lua).

* Concise DSL syntax - Like `class "Cls" : Base { ... }`
* Lightweight runtime - Less than 500 lines of core code, doing nothing superfluous
* LSP friendly - Automatically generate static type annotations, get rid of hand-written “---@class”
* Zero dependencies - Pure Lua implementation, compatible with Lua 5.1+ and LuaJIT

After installation, if you need static analysis support, please refer to the “Type Inference” section in the README.
]],
    homepage = "https://github.com/blanhhy/LuaSimpleClass",
    license = "Unlicense",
    maintainer = "blanhhy <balancestar676@qq.com>",
    labels = { "luaoop", "oop", "luaclass", "class", "luals", "lls" },
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["simpleclass.init"]      = "simpleclass/init.lua",
        ["simpleclass.m"]         = "simpleclass/m.lua",
        ["simpleclass.object"]    = "simpleclass/object.lua",
        ["simpleclass.declare"]   = "simpleclass/declare.lua",
        ["simpleclass.class"]     = "simpleclass/class.lua",
        ["simpleclass.super"]     = "simpleclass/super.lua",
        ["simpleclass.interface"] = "simpleclass/interface.lua",
        ["simpleclass.with"]      = "simpleclass/with.lua",
    },
    install = {
        -- LuaLS 类型推导支持文件，安装到 rocks 树的 conf/simpleclass.luals 目录
        conf = {
            ["simpleclass.luals/simpleclass.d.lua"]             = "simpleclass.d.lua",
            ["simpleclass.luals/simpleclass.plugin.lua"]        = ".luals/simpleclass.plugin.lua",
            ["simpleclass.luals/patches/overload_dispatch.lua"] = ".luals/patches/overload_dispatch.lua",
        },
    },
}
