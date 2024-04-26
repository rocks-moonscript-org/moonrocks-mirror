package = "treelib"
version = "1.0-1"
source = {
    url = "git://github.com/liaozhaoyan/treelib",
}
description = {
    summary = "lua tree library.",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/treelib",
    detailed = [[
Tree is an important data structure in computer science. Examples are shown in ML algorithm designs such as random forest tree and software engineering such as file system index. treelib is created to provide an efficient implementation of tree data structure in Lua.
]],
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['treelib'] = {
            sources = {"treelib.c"},
        },
        ['treewrap'] = {
            sources = {"treewrap.lua"},
        }
    },
}