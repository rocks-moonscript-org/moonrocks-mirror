package = 'fsrouter'
version = '0.2.0-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-fsrouter.git',
    tag = 'v0.2.0',
}
description = {
    summary = 'filesystem based url router',
    homepage = 'https://github.com/mah0x211/lua-fsrouter',
    license = 'MIT/X11',
    maintainer = 'Masatoshi Fukunaga'
}
dependencies = {
    'lua >= 5.1',
    'basedir >= 0.1.0',
    'isa >= 0.2.1',
    'loadchunk >= 0.1.2',
    'plut >= 0.3.0',
}
build = {
    type = 'builtin',
    modules = {
        fsrouter = 'fsrouter.lua',
        ['fsrouter.categorizer'] = 'lib/categorizer.lua',
        ['fsrouter.default'] = 'lib/default.lua',
    }
}
