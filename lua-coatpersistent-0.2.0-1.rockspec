package = 'lua-CoatPersistent'
version = '0.2.0-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-coatpersistent-0.2.0.tar.gz',
    md5 = 'bb4c3016f7a68d60f73b776c0399ff03',
    dir = 'lua-CoatPersistent-0.2.0',
}
description = {
    summary = "an ORM for lua-Coat",
    detailed = [[
        lua-CoatPersistent is an Object-Relational Mapping for lua-Coat.
        It is built over the modules LuaSQL and Dado.
        It could support all database engine which has a driver in LuaSQL.
    ]],
    homepage = 'http://fperrad.github.com/lua-CoatPersistent',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'luasql-sqlite3 >= 2.2.0',
--    'lsqlite3 >= 0.7',
    'dado >= 1.2.0',
    'lua-coat >= 0.9.0',
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['Coat.Persistent']             = 'src/Coat/Persistent.lua',
        ['Coat.Persistent.lsqlite3']    = 'src/Coat/Persistent/lsqlite3.lua',
    },
    copy_directories = { 'doc', 'test' },
}
