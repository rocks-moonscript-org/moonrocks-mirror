package = "connman_dbus"
 version = "0.1.0-1"
 source = {
    url = "git://github.com/stefano-m/lua-connman_dbus",
    tag = "v0.1.0"
 }
 description = {
    summary = "Get network information with Connman and DBus",
    detailed = "Get network information with Connman and DBus",
    homepage = "https://github.com/stefano-m/lua-connman_dbus",
    license = "Apache v2.0"
 }
 dependencies = {
    "lua >= 5.1",
    "ldbus_api >= 0.9.0, < 0.10"
 }
 supported_platforms = { "linux" }
 build = {
    type = "builtin",
    modules = { connman_dbus = "connman_dbus.lua" },
    copy_directories = { "doc" }
 }
