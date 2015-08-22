 package = "cyrussasl"
 version = "1.1.0-1"
 source = {
    url = "git://github.com/JorjBauer/lua-cyrussasl",
    tag = "v1.1.0"
 }
 description = {
    summary = "Cyrus SASL library for Lua 5.1+",
    detailed = [[...
    ]],
    homepage = "http://github.com/JorjBauer/lua-cyrussasl",
    license = "BSD"
 }
 dependencies = {
    "lua >= 5.1",
 }
 external_dependencies = {
    LIBSASL = {
       header = "sasl/sasl.h"
    }
 }
 build = {
    type = "builtin",
    modules = { 
    	    cyrussasl = { 
	    	      sources = { "context.c", "cyrussasl.c", "luaabstract.c"},
		      libraries = { "sasl2" },
		      defines = { 'VERSION="1.1"' },
	    }
    },
 }
