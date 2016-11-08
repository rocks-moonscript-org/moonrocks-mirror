package = "luafanmicro"
version = "0.4-1"
source = {
   url = "git://github.com/luafan/luafan",
   tag = "v0.4"
}

description = {
   summary = "A single process/thread library, with async apis for Lua.",
   detailed = [[
      full coroutine apis: http/httpd tcp/tcpd udp/udpd mariadb fifo.
   ]],
   homepage = "https://github.com/luafan/luafan",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.1"
}

external_dependencies = {
   LIBEVENT = {
      header = "event2/event.h"
   },
}

build = {
   type = "builtin",
   modules = {
      fan = {
         sources = {
            "src/utlua.c",
            "src/bytearray.c",
            "src/event_mgr.c",
            "src/luafan.c",
            "src/tcpd.c",
            "src/udpd.c",
            "src/stream.c",
            "src/fifo.c",
            "src/httpd.c",
         },
         defines = { "FAN_HAS_OPENSSL=0", "FAN_HAS_LUAJIT=1" },
         libraries = { "event" },
         incdirs = { "$(LIBEVENT_INCDIR)" },
         libdirs = { "$(LIBEVENT_LIBDIR)" }
      },
      ["fan.connector.init"] = "modules/fan/connector/init.lua",
      ["fan.connector.tcp"] = "modules/fan/connector/tcp.lua",
      ["fan.connector.udp"] = "modules/fan/connector/udp.lua",
      ["fan.connector.fifo"] = "modules/fan/connector/fifo.lua",
      ["fan.worker.init"] = "modules/fan/worker/init.lua",
      ["fan.pool"] = "modules/fan/pool.lua",
      ["fan.objectbuf"] = "modules/fan/objectbuf.lua",
      ["fan.upnp"] = "modules/fan/upnp.lua",
      ["fan.utils"] = "modules/fan/utils.lua",
      ["fan.http"] = "modules/fan/http.lua",
      ["config"] = "modules/config.lua",
      ["sqlite3.orm"] = "modules/sqlite3/orm.lua"
   }
}
