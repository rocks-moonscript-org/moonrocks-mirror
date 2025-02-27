package = "reflex"
version = "0.10.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-reflex.git",
    tag = "v0.10.0",
}
description = {
    summary = "A simple web framework for lua",
    homepage = "https://github.com/mah0x211/lua-reflex",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    -- asynchronous runtime
    "act ~> 0.16",
    "gpoll ~> 0.9",
    -- compatibility
    "unpack >= 0.1.0",
    "xpcall >= 0.2.0",
    -- crypto
    "hmac >= 0.3.0",
    -- data accessors
    "cache >= 1.3.0",
    "kvpairs >= 0.1.0",
    -- encode/decode
    "base64mix >= 1.0.0",
    "yyjson >= 0.8.0",
    -- error handling
    "assert >= 0.6.0",
    "error >= 0.12.0",
    "errno >= 0.4.0",
    -- environment
    "getcwd >= 0.2.0",
    "setenv >= 0.1.0",
    -- filesystem
    "basedir >= 0.5.1",
    "exists >= 0.1.0",
    "exec >= 0.5.1",
    "io-fopen >= 0.1.3",
    "mediatypes >= 2.0.1",
    "libmagic >= 5.41.1",
    -- OOP library
    "metamodule ~> 0.5",
    -- parser
    "cookie >= 1.3.0",
    "getopts >= 0.1.0",
    "url >= 2.1.0",
    -- posix
    "signal >= 1.5.0",
    -- random string generator
    "ossp-uuid >= 1.6.2",
    "string-random >= 0.1.0",
    -- string
    "string-capitalize >= 0.2.0",
    "string-contains >= 0.1.0",
    "string-split >= 0.3.0",
    "string-trim >= 0.2.0",
    -- template engine
    "rez >= 0.5.4",
    -- utility
    "dump >= 0.1.2",
    "isa >= 0.3.0",
    "loadchunk >= 0.1.2",
    "print >= 0.5.0",
    -- web framework base library
    "context >= 0.2.0",
    "fsrouter >= 0.7.1",
    "net-http ~> 0.7",
}
build = {
    type = "builtin",
    install = {
        bin = {
            reflex = "bin/reflex.lua",
        },
    },
    modules = {
        ["reflex"] = "lib/reflex.lua",
        ["reflex.date"] = "lib/date.lua",
        ["reflex.exec"] = "lib/exec.lua",
        ["reflex.fetch"] = "lib/fetch.lua",
        ["reflex.fs"] = "lib/fs.lua",
        ["reflex.header"] = "lib/header.lua",
        ["reflex.install"] = "lib/install.lua",
        ["reflex.later"] = "lib/later.lua",
        ["reflex.log"] = "lib/log.lua",
        ["reflex.mime"] = "lib/mime.lua",
        ["reflex.readcfg"] = "lib/readcfg.lua",
        ["reflex.renderer"] = "lib/renderer.lua",
        ["reflex.request"] = "lib/request.lua",
        ["reflex.response"] = "lib/response.lua",
        ["reflex.router"] = "lib/router.lua",
        ["reflex.session"] = "lib/session.lua",
        ["reflex.status"] = "lib/status.lua",
        ["reflex.token"] = "lib/token.lua",
    },
}
