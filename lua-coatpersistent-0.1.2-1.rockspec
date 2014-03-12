package = 'lua-CoatPersistent'
version = '0.1.2-1'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-CoatPersistent/lua-coatpersistent-0.1.2.tar.gz',
    md5 = '3c3d19aad699f430962167c6db0a908e',
    dir = 'lua-CoatPersistent-0.1.2',
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
    'dado >= 1.2.0',
    'lua-coat >= 0.8.6',
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['Coat.Persistent']         = 'src/Coat/Persistent.lua',
    },
    copy_directories = { 'doc', 'test' },
}
