package = "CGILua"
version = "5.1.4-2"
source = {
   url = "http://github.com/downloads/keplerproject/cgilua/cgilua-5.1.4.tar.gz"
}
description = {
   summary = "Tool for creating dynamic Web pages and manipulating data from Web forms",
   detailed = [[
      CGILua allows the separation of logic and data handling from the
      generation of pages, making it easy to develop web applications with
      Lua. CGILua can be used with a variety of Web servers and, for each
      server, with different launchers. A launcher is responsible for the
      interaction of CGILua and the Web server, for example using ISAPI on
      IIS or mod_lua on Apache. 
   ]],
   license = "MIT/X11",
}
dependencies = {
   "lua >= 5.1", "luafilesystem >= 1.5.0"
}
build = {
   type = "builtin",
   modules = {
      cgilua = "src/cgilua/cgilua.lua",
      ['cgilua.authentication'] = "src/cgilua/authentication.lua",
      ['cgilua.cookies'] = "src/cgilua/cookies.lua",
      ['cgilua.dispatcher'] = "src/cgilua/dispatcher.lua",
      ['cgilua.loader'] = "src/cgilua/loader.lua",
      ['cgilua.lp'] = "src/cgilua/lp.lua",
      ['cgilua.mime'] = "src/cgilua/mime.lua",
      ['cgilua.post'] = "src/cgilua/post.lua",
      ['cgilua.readuntil'] = "src/cgilua/readuntil.lua",
      ['cgilua.serialize'] = "src/cgilua/serialize.lua",
      ['cgilua.session'] = "src/cgilua/session.lua",
      ['cgilua.urlcode'] = "src/cgilua/urlcode.lua"
   },
   copy_directories = {
      "examples", "doc", "tests"
   },
   install = {
      bin = {
         "src/launchers/cgilua.cgi", "src/launchers/cgilua.fcgi"
      }
   }
}
