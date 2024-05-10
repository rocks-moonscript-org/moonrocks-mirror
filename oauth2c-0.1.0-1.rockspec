package = "oauth2c"
version = "0.1.0-1"
source = {
    url = "git://github.com/mah0x211/lua-oauth2c.git",
    tag = "v0.1.0",
}
description = {
    summary = "OAuth2 client library for lua.",
    homepage = "https://github.com/mah0x211/lua-oauth2c",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.13.0",
    "form-urlencoded >= 0.2.0",
    "lauxhlib >= 0.6.0",
    "metamodule >= 0.5.0",
    "url >= 2.1.0",
    "yyjson >= 0.8.0",
}
build = {
    type = "builtin",
    modules = {
        ["oauth2c"] = "oauth2c.lua",
        ["oauth2c.request"] = "lib/request.lua",
        ["oauth2c.authorization"] = "lib/authorization.lua",
        ["oauth2c.access_token"] = "lib/access_token.lua",
        ["oauth2c.refresh_token"] = "lib/refresh_token.lua",
    },
}

