package = 'zync'
version = '0.2.5-1'
source = {
    url = 'https://gitlab.com/byarocks/zync/-/archive/v0.2.5/zync-v0.2.5.tar.gz',
    dir = 'zync-v0.2.5',
}

description = {
    summary = 'Zephyr build system companion',
    detailed = [[
        A CLI tool written in Lua to manage, build, simulate, test, flash and debug Zephyr OS apps, primarily
        aimed at multi-image (bootloader + app/s) Zephyr OS projects managed by sysbuild that uses native 
        cmake + ninja build system with a declarative config.
    ]],
    homepage = 'https://gitlab.com/byarocks/zync.git',
    license = 'MIT',
}

dependencies = {
    'lua >= 5.1',
    'argparse >= 0.7.1',
    'luafilesystem >= 1.7.0',
}

build = {
    type = 'builtin',
    modules = {
        ['zync'] = 'lua/zync/init.lua',
    },
    install = {
        bin = {
            ['zync'] = 'bin/zync',
        },
    },
}
