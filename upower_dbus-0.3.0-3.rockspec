package = "upower_dbus"
version = "0.3.0-3"
source = {
   url = "git://github.com/stefano-m/lua-upower_dbus",
   tag = "v0.3.0"
}
description = {
   summary = "Get power information with UPower and DBus",
   detailed = "Get power information with UPower and DBus",
   homepage = "https://github.com/stefano-m/lua-upower_dbus",
   license = "Apache v2.0"
}
supported_platforms = {
   "linux"
}
dependencies = {
   "lua >= 5.1",
   "dbus_proxy >= 0.8.0, < 0.11",
   "enum >= 0.1.0, < 0.2"
}
build = {
   type = "builtin",
   modules = {
      upower_dbus = "src/upower_dbus/init.lua"
   },
   copy_directories = {
      "docs"
   }
}
