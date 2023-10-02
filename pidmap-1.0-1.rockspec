package = "pidmap"
version = "1.0-1"
source = {
    url = "git://github.com/liaozhaoyan/pidmap",
}
description = {
    summary = "get pid mapping.",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/pidmap",
    detailed = [[
get pid mapping.
]],
}
dependencies = {
    "lua >= 5.1",
    "eclass >= 1.0-1",
    "pystring >= 1.0-2",
    "bitlib"
}
build = {
    type = "builtin",
    modules = {
        pidmap = "pidmap.lua"
    },
}