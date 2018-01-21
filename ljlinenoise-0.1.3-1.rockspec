package = 'ljlinenoise'
version = '0.1.3-1'
source = {
    url = 'http://github.com/fperrad/ljlinenoise/raw/releases/ljlinenoise-0.1.3.tar.gz',
    md5 = '1741642ef921b311d870c3c82c79d55e',
    dir = 'ljlinenoise-0.1.3',
}
description = {
    summary = "Line editing in pure LuaJIT",
    detailed = [[
        ljlinenoise is a pure LuaJIT port of linenoise (https://github.com/antirez/linenoise),
        a small alternative to readline and libedit.
        ljlinenoise is based on ljsyscall (https://github.com/justincormack/ljsyscall).
        ljlinenoise is compatible with lua-linenoise (https://github.com/hoelzro/lua-linenoise).
    ]],
    homepage = 'http://fperrad.github.io/ljlinenoise/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua == 5.1',               -- In fact this should be "luajit >= 2.0.0"
    'ljsyscall >= 0.9',
}
build = {
    type = 'builtin',
    modules = {
        ['linenoise'] = 'src/linenoise.lua',
    },
    install = {
        bin = {
            'src/lrepl',
            'src/ljrepl',
        }
    },
    copy_directories = { 'docs', 'test' },
}
