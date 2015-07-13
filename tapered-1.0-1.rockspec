package = 'tapered'
version = '1.0-1'
source = {
    url = 'https://bitbucket.org/telemachus/tapered/get/v1.0-1.tar.gz',
    dir = 'telemachus-tapered-547d342faaee',
}
description = {
    summary = 'Very minimal tap testing for Lua.',
    detailed = [[
	Very minimal tap testing for Lua. Arguably too minimal.
    ]],
    license = 'BSD 3-Clause'
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = { tapered = 'src/tapered.lua' },
    copy_directories = { 'doc' }
}
