package = "lua-webview"
version = "1.0-1"
source = {
	url = "git+https://github.com/javalikescript/lua-webview.git",
	tag = "1.0",
}
description = {
  summary = "Functions to open a web page in a dedicated window from Lua.",
  detailed = [[
    The Lua webview module provides functions to open a web page in a dedicated window from Lua.
    require('webview').open('http://www.lua.org/')
    This module is a binding of the tiny cross-platform webview library.
    This module is part of the luaclibs project, the binaries can be found on the luajls page.
  ]],
  homepage = "https://github.com/javalikescript/lua-webview",
  license = "MIT",
}
supported_platforms = {
	"linux",
	"windows",
}
dependencies = {}

-- see https://github.com/luarocks/luarocks/wiki/Creating-a-rock
-- and https://github.com/luarocks/luarocks/wiki/Rockspec-format
-- and https://github.com/luarocks/luarocks/wiki/Platform-overrides

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
		},
	}
end

build = {
	 platforms = {
	  linux = build_platform("linux"),
	  windows = build_platform("windows"),
  }
}
