package = 'tapered'
version = '1.1-0'
source = {
    url = 'https://bitbucket.org/telemachus/tapered/downloads/tapered-v1.1-0.tar.gz',
    dir = 'tapered',
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
