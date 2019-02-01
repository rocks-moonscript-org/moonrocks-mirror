package = "lrand"
version = "1.0.0-0"
source = {
     url = "git://github.com/Mehgugs/lrand.git"
    ,tag = "1.0.0"
}
description = {
    summary = "A 5.3 library for generating random numbers.",
    detailed = [[
        "A library for generating random numbers based on the Mersenne Twister,
        a pseudorandom number generating algorithm developped by Makoto Matsumoto
        and Takuji Nishimura (alphabetical order) in 1996/1997."
        This is based on the package lrandom which is for lua 5.1.
    ]],
    homepage = "https://github.com/Mehgugs/lrand",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.3"
}
build = {
    type = "builtin",
    modules = {
       lrand = "lrand.c"
    }
 }