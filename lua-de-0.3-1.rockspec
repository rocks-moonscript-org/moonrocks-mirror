package = "lua-de"
version = "0.3-1"

source = {
    url = "https://bitbucket.org/lucashnegri/lua-de/get/v0.3.tar.gz",
    dir = "lucashnegri-lua-de-78583d9ed0f2",
    md5 = "8d038e0e6e2c49cc245f9c03d52c2aa0",
}

description = {
    summary    = "Differential evolution in Lua",
    detailed   = [[
    lua-de is an implementation of the differential evolution
    algorithm for Lua. Currently only the DE/rand/1/bin scheme is
    implemented, but it is easy to change only the required functions to
    suit one's needs.
    ]],
    homepage   = "https://bitbucket.org/lucashnegri/lua-de",
    license    = "MIT",
    maintainer = "Lucas Hermann Negri <lucashnegri@gmail.com>",
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["de"]         = "de.lua",
    },
    copy_directories = {"examples"},
}
