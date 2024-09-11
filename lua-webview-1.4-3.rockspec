rockspec_format = "3.0"
package = "lua-webview"
version = "1.4-3"
source = {
	url = "git+https://github.com/javalikescript/lua-webview.git",
	tag = "1.4.3",
}
description = {
  summary = "Functions to open a web page in a dedicated window from Lua",
  detailed = [[
    The Lua webview module provides functions to open a web page in a dedicated window from Lua.
    require('webview').open('http://www.lua.org/')
    This module is a binding of the tiny cross-platform webview-c library.
		This module is part of the luaclibs project, the binaries can be found on the luajls page.
		
		The Windows installation may be a little bit tricky, the following may help.
		Download the lua 64 bits dynamic libraries built with mingw64 from https://sourceforge.net/projects/luabinaries/files/5.4.2/Windows%20Libraries/Dynamic/
		Open a command prompt with git, msys2 and mingw64 in the path
		luarocks --lua-dir .../lua-5.4 MAKE=make CC=gcc LD=gcc install lua-webview
		Take care to use slashes for the lua path.
  ]],
  homepage = "https://github.com/javalikescript/lua-webview",
  license = "MIT",
}
supported_platforms = {
	"linux",
	"windows",
}

local function build_platform(plat)
	return {
		type = "make",
		makefile = "rock.mk",
		build_variables = {
			PLAT = plat,
			CFLAGS = "$(CFLAGS)",
			LIBFLAG = "$(LIBFLAG)",
			LUA_LIBDIR = "$(LUA_LIBDIR)",
			LUA_BINDIR = "$(LUA_BINDIR)",
			LUA_INCDIR = "$(LUA_INCDIR)",
			LUA = "$(LUA)",
		},
		install_variables = {
			PLAT = plat,
			INST_PREFIX = "$(PREFIX)",
			INST_BINDIR = "$(BINDIR)",
			INST_LIBDIR = "$(LIBDIR)",
			INST_LUADIR = "$(LUADIR)",
			INST_CONFDIR = "$(CONFDIR)",
			LUA = "$(LUA)",
		},
	}
end

build = {
	platforms = {
	  linux = build_platform("linux"),
	  windows = build_platform("windows"),
	},
	copy_directories = {
		"examples",
	},
}
