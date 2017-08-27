package = 'lua-wolfram'
version = '0.2-1'

source = {
    url = 'git://github.com/leopiccionia/lua-wolfram.git'
}

description = {
    summary = 'A library for Wolfram|Alpha API.',
    homepage = 'https://www.github.com/leopiccionia/lua-wolfram',
    maintainer = 'Leonardo Piccioni de Almeida <leopiccionia@gmail.com>',
    license = 'MIT'
}

dependencies = {
    'lua >= 5.1',
    'lua-cjson >= 2.0.0',
    'luasocket >= 2.0.2'
}

build = {
    type = 'builtin',
    modules = {
        ['wolfram'] = 'src/wolfram.lua'
    }
}