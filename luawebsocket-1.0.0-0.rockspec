package = "luawebsocket"
version = "1.0.0-0"

source = {
	url = "http://github.com/mbalmer/luawebsocket/archive/1.0.0.zip";
	dir = "luawebsocket-1.0.0";
}

description = {
	summary = "A WebSocket implementation for Lua, written in C",
	homepage = "http://github.com/arcapos/luawebsocket",
	license = "3-clause BSD",
}

dependencies = {
	"lua >= 5.1, < 5.4"
}

external_dependencies = {
	OPENSSL = {
		header = "openssl/ssl.h",
		library = "ssl"
	}
}

build = {
	type = "builtin",
		modules = {
			websocket = {
				sources = {
					"base64.c",
					"websocket.c",
					"luawebsocket.c"
				},
				libraries = {"ssl", "crypto"},
				incdirs = {"$(OPENSSL_INCDIR)"},
				libdirs = {"$(OPENSSL_LIBDIR)"}
		}
	},
	platforms = {
		linux = {
			modules = {
				websocket = {
					defines = {"_GNU_SOURCE"}
				}
			}
		}
	}
}
