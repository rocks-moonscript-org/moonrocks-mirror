package = "luawinapi"

version = "1.0.1-1"

source = {
    url = "git://github.com/oberhofer/luawinapi.git",
    tag = "v1.0.1"
}

description = {
    summary = "Wraps subset of WinAPI",
    detailed = [[
        Wraps a subset of of the Windows API.
    ]],
    license = "MIT/X11",
    homepage = "https://github.com/oberhofer/luawinapi"
}

supported_platforms = { "linux", "windows" }

dependencies = {
  "lua == 5.1",
  "luacwrap >= 1.0.1, < 1.1.0"
}

external_dependencies = {
   platforms = {
      win32 = {
         LUACWRAP = {
            library = "luacwrap.lib"
         }
      }
   }
}

build = {
    type = "builtin",
    copy_directories = { "doc", "samples" },
    platforms = {
        windows = {
            modules = {
                luawinapi = {
                    sources = {
                        "src/enumwindow.c",
                        "src/gdihelpers.c",
                        "src/gen_abstractions.c",
                        "src/gen_structs.c",
                        "src/luaaux.c",
                        "src/stdcallthunk.c",
                        "src/winapi.c",
                        "src/wndproc.c"
                    },
                    defines = { "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL",
                                "LUAWINAPI_API=__declspec(dllexport)" },
                    libraries = { "luacwrap", 
                                  "kernel32", "user32", "gdi32", "comctl32", "comdlg32", "Msimg32" },
                    incdirs = { "$(LUA_INCDIR)" },
                    libdirs = { "$(LUACWRAP_LIBDIR)" },
                }
            },
            install= {
                lib = {
                    "luawinapi.dll",
                },
                lua = {
                    ["winapi.init"]   = "src/init.lua",
                    ["winapi.loader"] = "src/winapi-loader.lua",
                }
            }
        }
    }
}
