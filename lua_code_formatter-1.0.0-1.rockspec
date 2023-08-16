package = "lua_code_formatter"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/Nomarian/luafmt.git"
}

description = {
   summary = "lua code formatter"
   ,homepage = "https://github.com/Nomarian/luafmt"
   ,license = "ISC"
}

dependencies = {
   "lua == 5.3"
   ,"lxsh"
}

build = {
   type = "builtin",
   modules = {
      luafmt = "luafmt.lua"
   }
   ,install = {
     bin = { luacodefmt = "luafmt.lua" }
   }
}
