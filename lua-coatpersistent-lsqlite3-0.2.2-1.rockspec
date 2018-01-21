package = 'lua-CoatPersistent-lsqlite3'
version = '0.2.2-1'
source = {
    url = 'http://github.com/fperrad/lua-CoatPersistent/raw/releases/lua-coatpersistent-0.2.2.tar.gz',
    md5 = '1e10d7530bd5a01aa2fb4b0633623008',
    dir = 'lua-CoatPersistent-0.2.2',
}
description = {
    summary = "an ORM for lua-Coat",
    detailed = [[
        lua-CoatPersistent is an Object-Relational Mapping for lua-Coat.
        This variant is built over the modules lsqlite3 and Dado.
    ]],
    homepage = 'http://fperrad.github.io/lua-CoatPersistent',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lsqlite3 >= 0.7',
    'dado >= 1.2.0',
    'lua-coat >= 0.9.0',
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['Coat.Persistent']             = 'src.lsqlite3/Coat/Persistent.lua',
    },
    copy_directories = { 'docs', 'test' },
}
