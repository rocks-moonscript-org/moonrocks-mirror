package = "lua-resty-mpd"
version = "1.0.5-0"
source = {
    url = "https://github.com/jprjr/lua-resty-mpd/archive/1.0.5.tar.gz",
    file = "lua-resty-mpd-1.0.5.tar.gz"
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
