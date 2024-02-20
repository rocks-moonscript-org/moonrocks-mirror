package = "repeatable-random-number"
version = "1.0.0-4"
source = {
   url = "git://github.com/LionelBergen/RepeatableRandomNumber.git",
   tag = "master",
}
description = {
   summary = "Repeatable random number generator and manager.",
   detailed = [[
      This is a wrapper for Lua's builtin math.random. Purpose is for debugging & testing applications
	  that use random numbers. Having numbers be reproduced the same way makes for easier testing & debugging
   ]],
   homepage = "https://github.com/LionelBergen/RepeatableRandomNumber",
}
dependencies = {
    "lua >= 5.1",
}
build = {
	["type"] = "builtin",
	modules = {
		repeatablerandomnumber = "RepeatableRandomNumber.lua"
	}
}