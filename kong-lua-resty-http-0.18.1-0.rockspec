package = "kong-lua-resty-http"
version = "0.18.1-0"
source = {
    url = "git+https://github.com/Kong/lua-resty-http.git",
    tag = "0.18.1"
}
description = {
    summary = "Lua HTTP client cosocket driver for OpenResty / ngx_lua.",
    homepage = "https://github.com/Kong/lua-resty-http",
    license = "2-clause BSD",
    maintainer = "Kong Inc."
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
