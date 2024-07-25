-- luna-framework-1.0-3.rockspec

package = "luna-framework"
version = "1.0-3"
source = {
   url = "git://github.com/danoricm/Luna-Framework",
   tag = "v1.0-3"
}
description = {
   summary = "A comprehensive Lua library for various programming paradigms",
   detailed = [[
      Luna Framework is a versatile Lua library that supports a wide range of programming paradigms including 
      imperative, procedural, object-oriented, functional, event-driven, concurrent, aspect-oriented, logic, 
      declarative, reactive, metaprogramming, dataflow, agent-oriented, array-oriented, constraint, data-oriented, 
      rule-based, stack-based, and synchronous programming. It provides robust and reusable components to simplify 
      and streamline development for Lua programmers.
   ]],
   homepage = "https://github.com/danoricm/Luna-Framework",
   license = "GPL-3.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["luna-framework"] = {
         "agent_oriented/init.lua",
         "array_oriented/init.lua",
         "aspect_oriented/init.lua",
         "concurrent/init.lua",
         "constraint/init.lua",
         "dataflow/init.lua",
         "data_oriented/init.lua",
         "declarative/init.lua",
         "event_driven/init.lua",
         "functional/init.lua",
         "imperative_procedural/init.lua",
         "init.lua",
         "logic/init.lua",
         "metaprogramming/init.lua",
         "object_oriented/init.lua",
         "reactive/init.lua",
         "rule_based/init.lua",
         "stack_based/init.lua",
         "synchronous/init.lua",
      }
   }
}
