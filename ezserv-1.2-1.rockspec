package = "ezserv"
version = "1.2-1"
source = {
   url = "https://github.com/esophagus-now/lua_ezserv/archive/refs/tags/ezserv-1.2.tar.gz",
   dir = "lua_ezserv-ezserv-1.2" -- No idea why github did this but whatever
}
description = {
   summary = "Friendly way to add HTTP/websocket servers to Lua",
   detailed = [[
      This project is designed to be the easiest/friendliest
      way to add HTTP and websocket server support to a Lua
      project. It uses boost beast behind the scenes.

      Features:
      - Asynchronous
      - Friendly API: just eight functions, yet supports
        all kinds of usage patters in Lua (event polling,
        coroutines, etc.)
      - HTTP requests are parsed for you, and you can
        send back data or error codes
      - Can upgrade HTTP sessions to websockets and
        send/receive data. The websocket framing, security,
        pings/pongs, etc. are all handled by boost beast.

     This is not meant to be a high-performance 10000 thread
     webserver. It is meant to be an easy way to add web support
     to small projects.
   ]],
   homepage = "https://github.com/esophagus-now/lua_ezserv", 
   license = "MIT" -- I hope this is a good choice
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LIBBOOST = {
      header = "boost/asio.hpp" -- Picked asio arbitrarily
   }
}
build = {
   type = "builtin",
   modules = {
        ezserv = {
            sources = {"ezserv.cpp"},
            libraries = {"stdc++", "pthread"}, --Even though we are single-threaded, boost insists on this
            incdirs = {"$(LIBBOOST_INCDIR)"}
        }
   }
}