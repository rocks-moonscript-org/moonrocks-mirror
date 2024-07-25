package = "luna-framework"
version = "1.0-2"
source = {
   url = "git://github.com/danoricm/Luna-Framework.git",
   tag = "v1.0-2"
}
description = {
   summary = "A comprehensive Lua library supporting various programming paradigms.",
   detailed = [[
      Luna Framework is a comprehensive Lua library designed to support a wide range of programming paradigms, including imperative, procedural, object-oriented, functional, concurrent, agent-oriented, and more.
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
      ["luna-framework"] = "init.lua",
      ["luna-framework.agent_oriented"] = "agent_oriented/init.lua",
      ["luna-framework.array_oriented"] = "array_oriented/init.lua",
      ["luna-framework.aspect_oriented"] = "aspect_oriented/init.lua",
      ["luna-framework.concurrent"] = "concurrent/init.lua",
      ["luna-framework.constraint"] = "constraint/init.lua",
      ["luna-framework.dataflow"] = "dataflow/init.lua",
      ["luna-framework.data_oriented"] = "data_oriented/init.lua",
      ["luna-framework.declarative"] = "declarative/init.lua",
      ["luna-framework.event_driven"] = "event_driven/init.lua",
      ["luna-framework.functional"] = "functional/init.lua",
      ["luna-framework.imperative_procedural"] = "imperative_procedural/init.lua",
      ["luna-framework.logic"] = "logic/init.lua",
      ["luna-framework.metaprogramming"] = "metaprogramming/init.lua",
      ["luna-framework.object_oriented"] = "object_oriented/init.lua",
      ["luna-framework.reactive"] = "reactive/init.lua",
      ["luna-framework.rule_based"] = "rule_based/init.lua",
      ["luna-framework.stack_based"] = "stack_based/init.lua",
      ["luna-framework.synchronous"] = "synchronous/init.lua"
   }
}
