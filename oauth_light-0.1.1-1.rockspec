package = "oauth_light"
version = "0.1.1-1"

source = {
    url = "git://github.com/darkstalker/oauth_light.git",
    tag = "0.1.1",
}

description = {
    summary = "Minimal implementation of OAuth 1.0",
    detailed = [[
        Minimal implementation of OAuth 1.0.
        It provides a method for building signed OAuth requests, but it doesn't perform HTTP requests.
    ]],
    homepage = "https://github.com/darkstalker/oauth_light",
    license = "MIT/X11",
}

dependencies = {
    "lua >= 5.1",
    "lbase64 >= 20120820",
    "luacrypto >= 0.3.2",
}

build = {
    type = "builtin",
    modules = {
        oauth_light = "src/oauth_light.lua",
    },
    copy_directories = { "tests" },
}
