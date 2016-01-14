package = "luawinapi"

version = "1.3.0-1"

source = {
    url = "git://github.com/oberhofer/luawinapi.git",
    tag = "v1.3.0"
}

description = {
    summary = "Wraps subset of WinAPI",
    detailed = [[
        Wraps a subset of of the Windows API.
    ]],
    license = "MIT/X11",
    homepage = "https://github.com/oberhofer/luawinapi"
}

dependencies = {
  "lua >= 5.1",
  "luacwrap ~> 1.3",
  "bit32"
}


local function make_plat(plat)
  local defines = {
    win32 = {
     "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL", 
     "WINVER=0x0600", 
     "_WIN32_WINNT=0x0600", 
     "_WIN32_IE=0x0600"
    },
    mingw32 = {
     "WIN32", "NDEBUG", "_WINDOWS", "_USRDLL", 
     "WINVER=0x0600", 
     "_WIN32_WINNT=0x0600", 
     "_WIN32_IE=0x0600"
    }
  }
  local modules = {
    ["luawinapi.core"] = {
      sources = { "src/enumwindow.c",
                  "src/gdihelpers.c",
                  "src/gen_abstractions.c",
                  "src/gen_structs.c",
                  "src/luaaux.c",
                  "src/stdcallthunk.c",
                  "src/luawinapi.c",
                  "src/wndproc.c"
                },
      defines = defines[plat],
      libraries = { "kernel32", "user32", "gdi32", "comctl32", "comdlg32", "Msimg32" },
      -- luacwrap.h should be there
      incdirs = { "$(LUACWRAP_INCDIR)" },
      -- luaxx.lib/.a/.dll should be there
      libdirs = { "$(LUA_LIBDIR)", "$(LUA_BINDIR)" },
    },
    luawinapi = "src/luawinapi.lua"
  }
  return { modules = modules }
end

build = {
   type = "builtin",
   platforms = {
     win32 = make_plat("win32"),
     mingw32 = make_plat("mingw32")
   },
   copy_directories = { "doc", "samples" }
}
