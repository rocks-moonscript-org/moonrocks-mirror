package = "sessiond_dbus"
version = "0.1.0-1"
source = {
    url = "git://github.com/jcrd/lua-sessiond_dbus",
    tag = "v0.1.0",
}
description = {
    summary = "A library for interfacing with the sessiond DBus service",
    homepage = "https://github.com/jcrd/lua-sessiond_dbus",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "dbus_proxy >= 0.10.0",
}
build = {
    type = "builtin",
    modules = {
        ["sessiond_dbus"] = "init.lua",
    },
}
