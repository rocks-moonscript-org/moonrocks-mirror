package = "nsenter"
version = "1.0-2"
source = {
    url = "git://github.com/liaozhaoyan/nsenter",
}
description = {
    summary = "lua nsenter api.",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/nsenter",
    detailed = [[
lua nsenter api.
]],
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['nsenter'] = {
            sources = {"nsenter.c"},
        }
    },
}