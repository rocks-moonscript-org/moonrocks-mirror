rockspec_format = "3.0"
package = "luaserial"
version = "0.3-1"
source = {
  url = "git+https://git@github.com/javalikescript/luaserial.git",
	tag = "0.3",
}
description = {
  summary = "Functions to deal with serial port settings",
  detailed = [[
    The Lua serial module provides functions to deal with serial port settings such as bit rates (speed) data bits, parity.
    The device/file manipulation such as open, close, read and write are not provided.
  ]],
  --[[
    Prerequisites on Windows:
    Install msys2 then install make and mingw32 gcc, set mingw64 and msys in the beginning of your path
    luarocks MAKE=make CC=gcc LD=gcc make --lua-dir .../luaclibs/lua/src
  ]]
  homepage = "https://github.com/javalikescript/luaserial",
  license = "MIT",
}
dependencies = {
	"lua >= 5.1, <= 5.4",
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
		},
	}
end

build = {
	platforms = {
	  linux = build_platform("linux"),
	  windows = build_platform("windows"),
	}
}
