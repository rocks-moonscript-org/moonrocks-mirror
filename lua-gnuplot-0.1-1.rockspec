package = "lua-gnuplot"
version = "0.1-1"

source = {
    url = "https://bitbucket.org/lucashnegri/lua-gnuplot/get/v0.1.tar.gz",
    md5 = "bfc91365bf3a0cc35df02b757961ab26",
    dir = "lucashnegri-lua-gnuplot-6e13225c4faf",
}

description = {
    summary    = "Lua interface for gnuplot",
    detailed   = [[
    lua-gnuplot is a small script to help interfacing with gnuplot. It works by
    generating a [gnuplot][1] script from a Lua plot definition and calling the
    gnuplot program for you.
    ]],
    homepage   = "https://bitbucket.org/lucashnegri/lua-gnuplot",
    license    = "MIT",
    maintainer = "Lucas Hermann Negri <lucashnegri@gmail.com>",
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["gnuplot"]         = "gnuplot.lua",
    },
    copy_directories = {},
}
