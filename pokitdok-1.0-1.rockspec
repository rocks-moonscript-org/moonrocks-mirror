package = 'pokitdok'
version = '1.0-1'
source = {
    url = 'https://github.com/pokitdok/pokitdok-lua/archive/1.0-1.zip'
}
description = {
    summary = 'PokitDok Platform API Client for Lua',
    license = 'MIT',
    homepage = 'https://github.com/pokitdok/pokitdok-lua',
    maintainer = 'PokitDok, Inc.'
}
dependencies = {
    'lua >= 5.2',
    'lua-cjson = 2.1.0-1',
    'lbase64 = 20120820-1',
    'luasec = 0.5-2',
    'penlight = 1.3.1'
}
build = {
    type = 'builtin',
    modules = {
        ['pokitdok'] = 'pokitdok.lua'
    }
}