package = 'lua-CoatPersistent-LuaSQL'
version = '0.2.1-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-coatpersistent-0.2.1.tar.gz',
    md5 = '73b08107eab22d27dd66f1507a642ea6',
    dir = 'lua-CoatPersistent-0.2.1',
}
description = {
    summary = "an ORM for lua-Coat",
    detailed = [[
        lua-CoatPersistent is an Object-Relational Mapping for lua-Coat.
        This variant is built over the modules LuaSQL and Dado.
        It could support all database engine which has a driver in LuaSQL.
    ]],
    homepage = 'http://fperrad.github.com/lua-CoatPersistent',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'luasql-sqlite3 >= 2.2.0',
    'dado >= 1.2.0',
    'lua-coat >= 0.9.0',
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['Coat.Persistent']             = 'src/Coat/Persistent.lua',
    },
    copy_directories = { 'doc', 'test' },
}
