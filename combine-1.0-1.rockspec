package = "combine"
version = "1.0-1"
source = {
    url = "git://github.com/AricHasting/combine",
    tag = "v1.0.1"
}
description = {
   summary = "Left-combine a series of tables.",
   detailed = [[
        Combine is a module that performs a left-combine on a series of tables.
        Tables are folded into each other, new keys are added and existing keys are overwritten.
        Provides one function, combine(...). Shorthanded cmb(...) or cmbi(...) to perform a deep copy.
        Tested with busted.
   ]],
   homepage = "https://github.com/AricHasting/combine",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
       combine = "src/combine.lua"
    }
}
