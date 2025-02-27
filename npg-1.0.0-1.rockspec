package = 'npg'
version = '1.0.0-1'
source = {
    url = 'https://gitlab.com/byarocks/npg/-/archive/v1.0.0/npg-v1.0.0.tar.gz',
    dir = 'npg-v1.0.0',
}

description = {
    summary = 'A neovim plugin scaffolding generator',
    detailed = [[
        NPG - Neovim plugin generator
        A cli tool written in Lua to generate
        scaffolding for custom neovim plugins.
    ]],
    homepage = 'https://gitlab.com/byarocks/npg.git',
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
        ['npg'] = 'lua/npg/init.lua',
    },
    install = {
        bin = {
            ['npg'] = 'bin/npg'
        },
    },
}
