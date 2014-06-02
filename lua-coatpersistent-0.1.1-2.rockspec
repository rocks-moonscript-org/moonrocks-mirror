package = 'lua-CoatPersistent'
version = '0.1.1-2'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-CoatPersistent/lua-coatpersistent-0.1.1.tar.gz',
    md5 = '0820993c34a867c4c1891bffdd49f65d',
    dir = 'lua-CoatPersistent-0.1.1',
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
    'lua-coat >= 0.8.5',
    'lua-testmore >= 0.2.3',
}
build = {
    type = 'builtin',
    modules = {
        ['Coat.Persistent']         = 'src/Coat/Persistent.lua',
    },
    copy_directories = { 'doc', 'test' },
}
