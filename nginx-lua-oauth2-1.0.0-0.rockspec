package = "nginx-lua-oauth2"
version = "1.0.0-0"

source = {
    url = "git://github.com/mo22/nginx-lua-oauth2.git",
    tag = "1.0.0"
}

description = {
    summary = "nginx lua plugin for oauth",
    homepage = "https://github.com/mo22/nginx-lua-oauth2",
    maintainer = "Moritz Moeller <mm@mxs.de>",
    license = "MIT"
}

dependencies = {
    "lua-cjson",
    "lua-resty-cookie",
    "lua-resty-string",
    "lua-resty-jwt"
}

build = {
    type = "builtin",
    modules = {
        ["nginx-lua-oauth2"] = "nginx-lua-oauth2.lua"
    }
}


