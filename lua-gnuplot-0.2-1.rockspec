package = "lua-gnuplot"
version = "0.2-1"

source = {
    url = "https://bitbucket.org/lucashnegri/lua-gnuplot/get/v0.2.tar.bz2",
    md5 = "15e010691ab518b9b1b55e1d257f378a",
    dir = "lucashnegri-lua-gnuplot-6119390145a8",
}

description = {
    summary    = "Lua interface for gnuplot",
    detailed   = [[
    lua-gnuplot is a small library for using gnuplot in a Lua program. It works by
    generating a gnuplot script from a Lua plot definition and calling the
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
