package = "luna-framework"
version = "1.0-1"
source = {
    url = "git://github.com/danoricm/Luna-Framework",
    tag = "v1.0-1"
}

description = {
    summary = "Luna Framework for Lua",
    detailed = [[
        Luna Framework is a comprehensive Lua library that supports various programming paradigms.
        It provides robust, reusable components to simplify and streamline development for Lua programmers.
    ]],
    homepage = "https://github.com/danoricm/Luna-Framework",
    license = "GPLv3"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["luna-framework.agent_oriented"] = "src/agent_oriented/init.lua",
        ["luna-framework.array_oriented"] = "src/array_oriented/init.lua",
        ["luna-framework.aspect_oriented"] = "src/aspect_oriented/init.lua",
        ["luna-framework.concurrent"] = "src/concurrent/init.lua",
        ["luna-framework.constraint"] = "src/constraint/init.lua",
        ["luna-framework.dataflow"] = "src/dataflow/init.lua",
        ["luna-framework.data_oriented"] = "src/data_oriented/init.lua",
        ["luna-framework.declarative"] = "src/declarative/init.lua",
        ["luna-framework.event_driven"] = "src/event_driven/init.lua",
        ["luna-framework.functional"] = "src/functional/init.lua",
        ["luna-framework.imperative_procedural"] = "src/imperative_procedural/init.lua",
        ["luna-framework.logic"] = "src/logic/init.lua",
        ["luna-framework.metaprogramming"] = "src/metaprogramming/init.lua",
        ["luna-framework.object_oriented"] = "src/object_oriented/init.lua",
        ["luna-framework.reactive"] = "src/reactive/init.lua",
        ["luna-framework.rule_based"] = "src/rule_based/init.lua",
        ["luna-framework.stack_based"] = "src/stack_based/init.lua",
        ["luna-framework.synchronous"] = "src/synchronous/init.lua"
    }
}
