package = "tucube-http-router"
version = "1.0-1"

source = {
    url = "git://github.com/gonapps/tucube-http-lua-router",
    tag = "v1.0"
}

description = {
    summary = "",
    detailed = [[]],
    homepage = "http://github.com/gonapps/tucube-http-lua-router",
    license = "LGPLv3"
}

dependencies = {
    "lua >= 5.1",
    "lrexlib-pcre >= 2.8.0-1"
}

build = {
    type = "builtin",
    modules = {
        ["tucube.http.router"] = "src/tucube/http/router.lua"
    }
}
