package = "lua-resty-mpd"
version = "5.0.5-0"
source = {
    url = "https://github.com/jprjr/lua-resty-mpd/archive/5.0.5.tar.gz",
    file = "lua-resty-mpd-5.0.5.tar.gz"
}
description = {
    summary = "An OpenResty/Luasocket/cqueues MPD client library",
    homepage = "https://github.com/jprjr/lua-resty-mpd",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["resty.mpd"]                   = "src/resty/mpd.lua",
        ["resty.mpd.backend"]           = "src/resty/mpd/backend.lua",
        ["resty.mpd.commands"]          = "src/resty/mpd/commands.lua",
        ["resty.mpd.stack"]             = "src/resty/mpd/stack.lua",
        ["resty.mpd.backend.cqueues"]   = "src/resty/mpd/backend/cqueues.lua",
        ["resty.mpd.backend.luasocket"] = "src/resty/mpd/backend/luasocket.lua",
        ["resty.mpd.backend.nginx"]     = "src/resty/mpd/backend/nginx.lua",
    }
}
dependencies = {
    "lua >= 5.1",
}
