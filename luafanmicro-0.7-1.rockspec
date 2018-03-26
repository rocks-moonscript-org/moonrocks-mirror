package = "luafanmicro"
version = "0.7-1"
source = {
   url = "git://github.com/luafan/luafan",
   tag = "v0.7.0"
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
            "src/luafan_posix.c",
            "src/tcpd.c",
            "src/udpd.c",
            "src/stream.c",
            "src/objectbuf.c",
            "src/fifo.c",
            "src/httpd.c",
         },
         defines = { "FAN_HAS_OPENSSL=0", "FAN_HAS_LUAJIT=1", "_GNU_SOURCE=1" },
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
      ["fan.stream.init"] = "modules/fan/stream/init.lua",
      ["fan.stream.ffi"] = "modules/fan/stream/ffi.lua",
      ["fan.stream.bit"] = "modules/fan/stream/bit.lua",
      ["fan.httpd.init"] = "modules/fan/httpd/init.lua",
      ["fan.httpd.httpd"] = "modules/fan/httpd/httpd.lua",
      ["fan.objectbuf.init"] = "modules/fan/objectbuf/init.lua",
      ["fan.upnp"] = "modules/fan/upnp.lua",
      ["fan.utils"] = "modules/fan/utils.lua",
      ["fan.http.init"] = "modules/fan/http/init.lua",
      ["fan.http.http"] = "modules/fan/http/http.lua",
      ["config"] = "modules/config.lua",
      ["sqlite3.orm"] = "modules/sqlite3/orm.lua"
   }
}
