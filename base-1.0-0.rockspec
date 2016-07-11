package = 'base'
version = '1.0-0'
description = {
    summary = 'Derivative Object-oriented Programming',
    detailed = [[
	This is Yet Another Small Library for Lua,
	providing a foundation for derivative Object-oriented Programming.
    ]],
    homepage = 'http://base.oka.io',
    maintainer = 'yo@oka.io',
    license = 'MIT'
}
source = {
    url = 'git://github.com/Okahyphen/base',
    tag = 'v1.0.0'
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
	['base'] = 'src/base.lua'
    }
}
