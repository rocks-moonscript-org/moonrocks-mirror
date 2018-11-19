package = "rubyapi"
version = "1.0-1"

source = {
   url = "http://test.mk16.de/scriptFiles/rubyapi.lua",
   tag = "v1.0"
}

description = {
   summary = "rubyapi is an API that can be used to execute Ruby code from a Lua program.",
   detailed = [[
       rubyapi is an API that can be used to execute Ruby code from a Lua program.
       This requires Ruby to be installed on the computer.
   ]],
   homepage = "http://test.mk16.de/projects/rubyapi-1.0",
   license = "GNU GPL v3"
}

build = {
   type = "builtin",
   
   modules = {
      rubyapi = "rubyapi.lua"
   }
}
