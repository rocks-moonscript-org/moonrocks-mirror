package = "lua-resty-mpd"
version = "4.0.0-0"
source = {
    url = "https://github.com/jprjr/lua-resty-mpd/archive/4.0.0.tar.gz",
    file = "lua-resty-mpd-4.0.0.tar.gz"
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
