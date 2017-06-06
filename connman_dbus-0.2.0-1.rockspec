package = "connman_dbus"
version = "0.2.0-1"
source = {
   url = "git://github.com/stefano-m/lua-connman_dbus",
   tag = "v0.2.0"
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
   "dbus_proxy >= 0.8.1, < 0.9"
}
build = {
   type = "builtin",
   modules = {
      connman_dbus = "connman_dbus.lua"
   },
   copy_directories = {
      "docs"
   }
}
