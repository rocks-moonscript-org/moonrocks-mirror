package = "connman_dbus"
version = "0.4.0-1"
source = {
   url = "git://github.com/stefano-m/lua-connman_dbus",
   tag = "v0.4.0"
}
description = {
   summary = "Get network information with Connman and DBus",
   detailed = "Get network information with Connman and DBus",
   homepage = "https://github.com/stefano-m/lua-connman_dbus",
   license = "Apache v2.0"
}
supported_platforms = {
   "linux"
}
dependencies = {
   "lua >= 5.1",
   "dbus_proxy >= 0.9.0, < 0.10"
}
build = {
   type = "builtin",
   modules = {
      ["connman_dbus.init"] = "src/connman_dbus/init.lua"
   },
   copy_directories = {
      "docs"
   }
}
