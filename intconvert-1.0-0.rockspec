package = "intconvert"
version = "1.0-0"
source = {
   url = "git://github.com/iskolbin/lintconvert",
	 tag = "v1.0-0",
}
description = {
   summary = "Pure Lua integer encoder/decoder",
   detailed = [[
Pure Lua integer encoder/decoder for arbitrary bases.]],
   homepage = "https://github.com/iskolbin/lintconvert",
   license = "MIT/Public Domain"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      intconvert = "intconvert.lua",
   }
}
