package = "media_player"
 version = "0.1.3-1"
 source = {
    url = "git://github.com/stefano-m/lua-media_player",
    tag = "v0.1.3"
 }
 description = {
    summary = "Control your media player using the DBus Mpris specification",
    detailed = "Control your media player using the DBus Mpris specification",
    homepage = "https://github.com/stefano-m/lua-media_player",
    license = "GPL v3"
 }
 dependencies = {
    "lua >= 5.1",
    "ldbus_api >= 0.8, < 0.10"
 }
 supported_platforms = { "linux" }
 build = {
    type = "builtin",
    modules = { media_player = "media_player.lua" },
    copy_directories = { "doc" }
 }
