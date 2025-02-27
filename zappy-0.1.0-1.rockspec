package = 'zappy'
version = '0.1.0-1'
source = {
    url = 'https://gitlab.com/byarocks/zappy/-/archive/v0.1.0/zappy-v0.1.0.tar.gz',
    dir = 'zappy-v0.1.0'
}

description = {
    summary = 'An electrifying Zephyr OS app template generator',
    detailed = [[
        A command-line tool written in Lua to generate 
        simple Zephyr OS app templates.
    ]],
    homepage = 'https://gitlab.com/byarocks/zappy.git',
    license = 'MIT'
}

dependencies = {
    'lua >= 5.1',
    'luafilesystem >= 1.7.0',
    'argparse >= 0.7.1'
}

build = {
    type = 'builtin',
    modules = {
        ['zappy'] = 'lua/zappy/init.lua'
    },
    install = {
        bin = {
            ['zappy'] = 'bin/zappy'
        }
    }
}

