package = "lua-ircmess"
version = "0.2-0"
source = {
   url = "git://github.com/Xe/lua-ircmess.git"
}
description = {
   summary = "A simple, no bullshit IRC parser.",
   detailed = [[
        ircmess is a moderately useful python library for
        parsing irc messages. This version is fast and in C.
   ]],
   homepage = "http://github.com/Xe/lua-ircmess",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ircmess = {
            sources = {
            "ircmess.c",
            "src/irc.c"
            },
            incdirs = {"include"},
        },
    }
}
