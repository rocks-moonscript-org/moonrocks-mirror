package = 'mare'
version = '0.0.1-1'
source = {
}
description = {
    summary = 'An example for the LuaRocks tutorial.',
    detailed = [[
    This is an example for the LuaRocks tutorial.
    Here we would put a detailed, typically
    paragraph-long description.
    ]],
    homepage = 'http://...',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.3, < 5.4'
}
build = {
    type = 'builtin',
    modules = {
        mare = 'src/main.lua',
    }
}
