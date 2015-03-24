package = 'steentje'
version = '0.1-2'
source = {
    url = 'git://github.com/xiaq/steentje.git',
    tag = 'v0.1',
}
description = {
    summary = 'A toy project to play with LuaRocks.',
    license = 'BSD',
}
using = {
    "hello",
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        hello = 'src/hello.lua'
    },
}
hello_target = "world"
