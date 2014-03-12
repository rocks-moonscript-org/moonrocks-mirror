package = "LuaPOD"
version = "0.1-1"
source = {
   url = "http://luaforge.net/frs/download.php/2511/luapod-0.1.tar.gz"
}
description = {
   summary = "Library for parsing POD files using Lua",
   detailed = [[
      Plain Old Documentation, or just POD, is a simple documentation
      format used mainly among users of the Perl programming language.
      LuaPOD is a tool that allows to translate a POD file into HTML
      using Lua and the LPeg library.
   ]],
   license = "MIT/X11",
   homepage = "http://www.lua.inf.puc-rio.br/~sergio/luapod/index.html"
}
dependencies = {
   "lua >= 5.1",
   "lpeg >= 0.6"
}
build = {
   type = "none",
   install = {
      lua = { "src/pod.lua" }
   }
}
