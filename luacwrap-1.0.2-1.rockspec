package = "luacwrap"

version = "1.0.2-1"

source = {
  url = "git://github.com/oberhofer/luacwrap.git",
  tag = "v1.0.2",
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

build = {
    platforms = {
        linux = {
          type = "make",
          build_variables = {
            LIB_OPTION = "-shared",
            CFLAGS = '$(CFLAGS) -I$(LUA_INCDIR) -DLINUX',
            LIB_EXT = '.so'
          },
        },
        win32 = {
            type = "builtin",
            modules = {
                luacwrap = {
                    sources = {
                        "src/defconstants.c",
                        "src/luaaux.c",
                        "src/luacwrap.c",
                        "src/wrapnumeric.c"
                    },
                    defines = { "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL",
                                "LUACWRAP_API=__declspec(dllexport)" },
                    libraries = { "user32" },
                }
            },
            install= {
                lib = {
                    "luacwrap.dll"
                }
            }
        }
    }
} 
