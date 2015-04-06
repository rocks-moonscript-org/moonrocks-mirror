package = 'steentje'
version = '0.1-1'
source = {
    url = 'git://github.com/xiaq/steentje.git',
    tag = 'v0.1',
}
description = {
    summary = 'A toy project to play with LuaRocks.',
    license = 'BSD',
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
