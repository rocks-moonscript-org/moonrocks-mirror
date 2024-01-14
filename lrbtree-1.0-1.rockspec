package = "lrbtree"
version = "1.0-1"
source = {
    url = "git://github.com/liaozhaoyan/lrbtree",
}
description = {
    summary = "lua rbtree library.",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/lrbtree",
    detailed = [[
    lua wrap for rbtree
]],
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['lrbtree'] = {
            sources = {"rbtree.c", "lrbtree.c"},
        }
    },
}