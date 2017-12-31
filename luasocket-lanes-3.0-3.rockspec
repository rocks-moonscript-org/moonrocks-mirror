package = "LuaSocket-Lanes"
version = "3.0-3"
source = {
   url = "https://github.com/djfdyuruiry/luasocket-lanes/archive/v3.0-3.zip",
   dir = "luasocket-lanes-3.0-3",
}
description = {
   summary = "Network support for the Lua language, now with Lua Lanes support!",
   detailed = [[
      This is a fork of LuaSocket library (v3.0-rc2).

      It provides the ability to use LuaSocket with the Lua Lanes library, allowing 
      the server listener to be one thread and the client handlers to be on seperate
      threads. 
      
      See the main readme to get started: https://github.com/djfdyuruiry/luasocket/blob/master/README
    
      While this library was made for working with Lua Lanes, it does not require that library to be installed and used.
      Because file descriptors are simple numbers, you could use this to deal with client requests anywhere you wish, using 
      another lua threading library, other language runtimes etc.
      ----

      LuaSocket is a Lua extension library that is composed by two parts: a C core
      that provides support for the TCP and UDP transport layers, and a set of Lua
      modules that add support for functionality commonly needed by applications
      that deal with the Internet.
   ]],
   homepage = "http://luaforge.net/projects/luasocket/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}

local function make_plat(plat)
   local defines = {
      unix = {
         "LUA_COMPAT_APIINTCASTS",
         "LUASOCKET_DEBUG",
         "LUASOCKET_API=__attribute__((visibility(\"default\")))",
         "UNIX_API=__attribute__((visibility(\"default\")))",
         "MIME_API=__attribute__((visibility(\"default\")))"
      },
      macosx = {
         "LUA_COMPAT_APIINTCASTS",
         "LUASOCKET_DEBUG",
         "UNIX_HAS_SUN_LEN",
         "LUASOCKET_API=__attribute__((visibility(\"default\")))",
         "UNIX_API=__attribute__((visibility(\"default\")))",
         "MIME_API=__attribute__((visibility(\"default\")))"
      },
      win32 = {
         "LUA_COMPAT_APIINTCASTS",
         "LUASOCKET_DEBUG",
         "NDEBUG",
         "LUASOCKET_API=__declspec(dllexport)",
         "MIME_API=__declspec(dllexport)"
      },
      mingw32 = {
         "LUA_COMPAT_APIINTCASTS",
         "LUASOCKET_DEBUG",
         "LUASOCKET_INET_PTON",
         "WINVER=0x0501",
         "LUASOCKET_API=__declspec(dllexport)",
         "MIME_API=__declspec(dllexport)"
      }
   }
   local modules = {
      ["socket-lanes.core"] = {
         sources = { "src/luasocket.c", "src/timeout.c", "src/buffer.c", "src/io.c", "src/auxiliar.c",
                     "src/options.c", "src/inet.c", "src/except.c", "src/select.c", "src/tcp.c", "src/udp.c" },
         defines = defines[plat],
         incdir = "src"
      },
      ["mime-lanes.core"] = { 
         sources = { "src/mime.c" },
         defines = defines[plat],
         incdir = "src"
      },
      ["socket-lanes.http"] = "src/http-lanes.lua",
      ["socket-lanes.url"] = "src/url-lanes.lua",
      ["socket-lanes.tp"] = "src/tp-lanes.lua",
      ["socket-lanes.ftp"] = "src/ftp-lanes.lua",
      ["socket-lanes.headers"] = "src/headers-lanes.lua",
      ["socket-lanes.smtp"] = "src/smtp-lanes.lua",
      ["ltn12-lanes"] = "src/ltn12-lanes.lua",
      ["socket-lanes"] = "src/socket-lanes.lua",
      ["mime-lanes"] = "src/mime-lanes.lua"
   }
   if plat == "unix" or plat == "macosx" then
      modules["socket-lanes.core"].sources[#modules["socket-lanes.core"].sources+1] = "src/usocket.c"
      modules["socket-lanes.unix"] = {
         sources = { "src/buffer.c", "src/auxiliar.c", "src/options.c", "src/timeout.c", "src/io.c", 
                     "src/usocket.c", "src/unix.c" },
         defines = defines[plat],
         incdir = "/src"
      }
      modules["socket-lanes.serial"] = {
         sources = { "src/buffer.c", "src/auxiliar.c", "src/options.c", "src/timeout.c",
                     "src/io.c", "src/usocket.c", "src/serial.c" },
         defines = defines[plat],
         incdir = "/src"
      }
   end
   if plat == "win32" or plat == "mingw32" then
      modules["socket-lanes.core"].sources[#modules["socket-lanes.core"].sources+1] = "src/wsocket.c"
      modules["socket-lanes.core"].libraries = { "ws2_32" }
   end
   return { modules = modules }
end

build = {
   type = "builtin",
   platforms = {
      unix = make_plat("unix"),
      macosx = make_plat("macosx"),
      win32 = make_plat("win32"),
      mingw32 = make_plat("mingw32")
   },
   copy_directories = { "doc", "samples", "etc", "test" }
}
