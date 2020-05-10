package = "lua-resty-mpd"
version = "2.0.0-0"
source = {
    url = "https://github.com/jprjr/lua-resty-mpd/archive/2.0.0.tar.gz",
    file = "lua-resty-mpd-2.0.0.tar.gz"
}
description = {
    summary = "An OpenResty/Luasocket MPD client library",
    homepage = "https://github.com/jprjr/lua-resty-mpd",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["resty.mpd"] = "lib/resty/mpd.lua"
    }
}
dependencies = {
    "lua >= 5.1",
}
