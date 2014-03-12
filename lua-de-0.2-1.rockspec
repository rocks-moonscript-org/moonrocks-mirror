package = "lua-de"
version = "0.2-1"

source = {
    url = "https://bitbucket.org/lucashnegri/lua-de/get/v0.2.tar.gz",
    md5 = "5c158eb4c36fc4620d070397b86e1c2f",
    dir = "lucashnegri-lua-de-b02e6f91b62d",
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
