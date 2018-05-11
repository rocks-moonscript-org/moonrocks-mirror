 package = "bigint"
 version = "1.0.3-1"
 source = {
    url = "git://github.com/JorjBauer/lua-bigint",
    tag = "v1.0.3"
 }
 description = {
    summary = "Arbitrarily large integer library for Lua 5.1+",
    detailed = [[cf. http://github.com/JorjBauer/lua-bigint
    ]],
    homepage = "http://github.com/JorjBauer/lua-bigint",
    license = "MIT"
 }
 dependencies = {
    "lua >= 5.1, <= 5.3"
 }
 build = {
    type = "builtin",
    modules = { 
    	    bigint = { 
	    	   sources = { "BigInt.cpp", "mainlib.c", "bigint-glue.cpp" },
		   defines = { 'VERSION="1.03"' },
	    },
	    ['bigint.factor'] = "factor.lua"
    },
 }
