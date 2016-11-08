package = "upower_dbus"
 version = "0.1.0-2"
 source = {
    url = "git://github.com/stefano-m/lua-upower_dbus",
    tag = "v0.1.0"
 }
 description = {
    summary = "Get power information with UPower and DBus",
    detailed = "Get power information with UPower and DBus",
    homepage = "https://github.com/stefano-m/lua-upower_dbus",
    license = "Apache v2.0"
 }
 dependencies = {
    "lua >= 5.1",
    "ldbus_api >= 0.9.0, < 0.10"
 }
 supported_platforms = { "linux" }
 build = {
    type = "builtin",
    modules = { upower_dbus = "upower_dbus.lua" },
    copy_directories = { "doc" }
 }
