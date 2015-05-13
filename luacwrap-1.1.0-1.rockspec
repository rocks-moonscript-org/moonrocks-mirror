package = "luacwrap"

version = "1.1.0-1"

source = {
  url    = "git://github.com/oberhofer/luacwrap.git",
  tag = "v1.1.0",
}

description = {
  summary = "LuaCwrap C structure wrapper.",
  detailed = [[
    LuaCwrap is a wrapper for C datatypes written in pure C. It 
    utilizes metadata (aka type descriptors) to describe the 
    layout and names of structures, unions, arrays and buffers.
  ]],
  homepage = "http://github.com/oberhofer/luacwrap",
  license = "MIT/X11"
}

supported_platforms = { "linux", "windows" }

dependencies = {
  "lua == 5.1"
}

local function make_plat(plat)
  local defines = {
    win32 = {
     "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL", 
     "WINVER=0x0600", 
     "_WIN32_WINNT=0x0600", 
     "_WIN32_IE=0x0600",
    },
    mingw32 = {
     "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL", 
     "WINVER=0x0600", 
     "_WIN32_WINNT=0x0600", 
     "_WIN32_IE=0x0600",
    },
    linux = {
    }
  }
  local build_variables = {
    linux = {
        LIB_OPTION = "-shared",
        CFLAGS = '$(CFLAGS) -I$(LUA_INCDIR) -DLINUX',
        LIB_EXT = '.so'
    }
  }

  local modules = {
    ["luacwrap"] = {
      sources = { "src/luaaux.c",
                  "src/luacwrap.c",
                  "src/wrapnumeric.c",
                  "src/defconstants.c",
                },
      defines = defines[plat],
      build_variables = build_variables[plat] or {},
      incdirs = {"./include" }
    },
    -- not necessary for releases
    ["testluacwrap"] = {
      sources = { "src/testluacwrap.c"
                },
      defines = defines[plat],
      build_variables = build_variables[plat] or {},
      incdirs = {"./include" }
    }
  }
  return { modules = modules }
end

build = {
  type = "builtin",
  copy_directories = { "doc" },
  platforms = {
    linux   = make_plat("linux"),
    win32   = make_plat("win32"),
    mingw32 = make_plat("mingw32")
  },
}
