package = 'lua-CoatPersistent'
version = '0.1.0-1'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-CoatPersistent/lua-coatpersistent-0.1.0.tar.gz',
    md5 = '53517af5df70e3952caca4283edd9f85',
    dir = 'lua-CoatPersistent-0.1.0',
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
    'lua-coat >= 0.8.4',
    'lua-testmore >= 0.2.2',
}
build = {
    type = 'none',
    modules = {
        ['Coat.Persistent']         = 'src/Coat/Persistent.lua',
    },
    copy_directories = { 'doc', 'test' },
}
