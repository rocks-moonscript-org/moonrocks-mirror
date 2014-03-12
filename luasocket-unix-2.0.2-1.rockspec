package = "LuaSocket-Unix"
version = "2.0.2-1"

source = {
   url = "http://luaforge.net/frs/download.php/2664/luasocket-2.0.2.tar.gz",
   md5 = "41445b138deb7bcfe97bff957503da8e"
}

description = {
   summary = "Unix Domain Sockets for the Lua language",
   detailed = [[
      socket.unix is a LuaSocket module that implements support for Unix Domain Sockets.
   ]]
}

supported_platforms = {
   "unix"
}

build = {
   type = "builtin",
   modules = {
      ["socket.unix"] = {
         sources = { "src/buffer.c", "src/auxiliar.c", "src/options.c", "src/timeout.c", "src/io.c", "src/usocket.c", "src/unix.c" },
         defines = { "LUASOCKET_DEBUG" }
      }
   },
   platforms = {
      macosx = {
         modules = {
            ["socket.unix"] = {
               defines = { "LUASOCKET_DEBUG", "UNIX_HAS_SUN_LEN" }
            }
         },
      }
   }
}
