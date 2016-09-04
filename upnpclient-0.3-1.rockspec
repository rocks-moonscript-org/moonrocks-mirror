package = "uPnPclient"
version = "0.3-1"
source = {
    url = "git://github.com/karlbunch/lua-upnclient",
    tag = "v0.3"
}
description = {
    summary = "Lua uPnP client for discovering uPnP routers and other devices and setting up port forwarding",
    detailed = [[
	Easy interface for lua programs to communicate with uPnP capable devices on a LAN.  Allows easy control of port forwarding in uPnP enabled LAN's.
	]],
    license = "MIT/X11",
    homepage = "https://github.com/karlbunch/lua-upnclient"
}
dependencies = {
    "lua >= 5.1",
    "luasocket ~> 3.0rc1-1",
    "httpclient ~> 0.1.0-7"
}
build = {
    type = "builtin",
    modules = {
	uPnPclient = "lua/uPnPclient.lua",
    },
    copy_directories = { "examples" }
}
