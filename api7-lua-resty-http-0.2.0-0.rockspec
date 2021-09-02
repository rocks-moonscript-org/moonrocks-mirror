package = "api7-lua-resty-http"
version = "0.2.0-0"
source = {
    url = "git://github.com/api7/lua-resty-http",
    tag = "v0.2.0"
}
description = {
    summary = "Lua HTTP client cosocket driver for OpenResty / ngx_lua.",
    homepage = "https://github.com/api7/lua-resty-http",
    license = "2-clause BSD",
    maintainer = "Yuansheng Wang <membphis@gmail.com>"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.http"] = "lib/resty/http.lua",
        ["resty.http_headers"] = "lib/resty/http_headers.lua",
        ["resty.http_connect"] = "lib/resty/http_connect.lua"
    }
}
