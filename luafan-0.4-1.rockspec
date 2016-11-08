package = "luafan"
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
   MARIADB = {
      header = "mysql/mysql.h"
   },
   OPENSSL = {
      header = "openssl/opensslv.h"
   },
   LIBEVENT = {
      header = "event2/event.h"
   },
   CURL = {
      header = "curl/curl.h"
   }
}

build = {
   type = "builtin",
   modules = {
      fan = {
         sources = {
            "src/utlua.c",
            "src/bytearray.c",
            "src/event_mgr.c",
            "src/hostcheck.c",
            "src/openssl_hostname_validation.c",
            "src/luafan.c",
            "src/tcpd.c",
            "src/udpd.c",
            "src/stream.c",
            "src/fifo.c",
            "src/http.c",
            "src/httpd.c",
            "src/luasql.c",
            "src/luamariadb.c",
         },
         defines = {"FAN_HAS_OPENSSL=1", "FAN_HAS_LUAJIT=1"},
         libraries = { "event", "event_openssl", "ssl", "crypto", "curl", "resolv", "mysqlclient" },
         incdirs = { "$(CURL_INCDIR)", "$(LIBEVENT_INCDIR)", "$(OPENSSL_INCDIR)", "$(MARIADB_INCDIR)" },
         libdirs = { "$(CURL_LIBDIR)", "$(LIBEVENT_LIBDIR)", "$(OPENSSL_LIBDIR)", "$(MARIADB_LIBDIR)" }
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
      ["mariadb.orm"] = "modules/mariadb/orm.lua",
      ["mariadb.pool"] = "modules/mariadb/pool.lua",
      ["config"] = "modules/config.lua",
      ["sqlite3.orm"] = "modules/sqlite3/orm.lua"
   }
}
