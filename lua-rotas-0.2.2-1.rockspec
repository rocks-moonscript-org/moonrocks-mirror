package = 'lua-Rotas'
version = '0.2.2-1'
source = {
    url = 'https://framagit.org/fperrad/lua-Rotas/raw/releases/lua-rotas-0.2.2.tar.gz',
    md5 = 'fca5a472417190243d4975cd94198f17',
    dir = 'lua-Rotas-0.2.2',
}
description = {
    summary = "a web server router",
    detailed = [[
        lua-Rotas is a web server router,
        designed to work with lua-Silva, _your personal string matching expert_.
    ]],
    homepage = 'https://fperrad.frama.io/lua-Rotas',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['Rotas']               = 'src/Rotas.lua',
    },
    copy_directories = { 'docs', 'test' },
}
