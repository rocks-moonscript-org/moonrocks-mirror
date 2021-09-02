package = 'lua-nuspell'
version = '0.3alpha-1'
source = {
    url = 'git://github.com/f3fora/lua-nuspell.git',
    tag = 'v0.3-alpha',
}
dependencies = {
    'lua >= 5.1',
}
description = {
    summary = 'lua bindings for Nuspell',
    detailed = 'lua-nuspell is a set of Lua 5.x bindings for Nuspell spellchecking C++ library.',
    homepage = 'https://github.com/f3fora/lua-nuspell',
    license = 'GNU LGPL v3',
}
build = {
    type = 'cmake',
    variables = {
        ['PROJ_VERSION'] = version,
        ['LUA_INCDIR'] = '$(LUA_INCDIR)',
        ['LUA_LIBDIR'] = '$(LUA_LIBDIR)',
        ['LUA_LIBDIR_FILE'] = '$(LUA_LIBDIR_FILE)',
        ['INSTALL_CMOD'] = '$(LIBDIR)',
        ['CMAKE_BUILD_TYPE'] = '$(CMAKE_BUILD_TYPE)',
        ['CFLAGS:STRING'] = '$(CFLAGS)',
    },
}
