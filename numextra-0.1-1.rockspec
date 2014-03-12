package = "numextra"
version = "0.1-1"

source = {
    url = "https://bitbucket.org/lucashnegri/numextra/get/v0.1.tar.gz",
    md5 = "000b221d7dd1ad3768f4f41199628a99",
    dir = "lucashnegri-numextra-98b5a229faea",
}

description = {
    summary    = "Complementary functions for Numeric Lua",
    detailed   = [[
    Numeric Extra is a collection of (unofficial) complementary functions
    for Numeric Lua. It provides some basic statistical functions like var,
    corr, std, ..., principal component analysis and linear discriminant analysis.
    Also, this library provides some additional functions to ease matrix handling.
    ]],
    homepage   = "https://bitbucket.org/lucashnegri/numextra",
    license    = "MIT",
    maintainer = "Lucas Hermann Negri <lucashnegri@gmail.com>",
}

dependencies = {
    "lua >= 5.1", "numlua >= 0.3"
}

build = {
    type = "builtin",
    modules = {
        ["numextra"]        = "numextra.lua",
        ["numextra.stats"]  = "numextra/stats.lua",
        ["numextra.matrix"] = "numextra/matrix.lua",
    },
    copy_directories = {"doc/html"},
}
