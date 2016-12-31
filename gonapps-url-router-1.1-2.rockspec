package = "gonapps-url-router"
version = "1.1-2"

source = {
    url = "git://github.com/gonapps/gonapps-lua-url-router",
    tag = "v1.1-2"
}

description = {
    summary = "",
    detailed = [[]],
    homepage = "http://github.com/gonapps/gonapps-lua-url-router",
    license = "LGPLv3"
}

dependencies = {
    "lua >= 5.1",
    "lrexlib-pcre >= 2.8.0-1",
    "gonapps-url-decoder >= 1.0-1"
}

build = {
    type = "builtin",
    modules = {
        ["gonapps.url.router"] = "src/gonapps/url/router.lua"
    }
}
