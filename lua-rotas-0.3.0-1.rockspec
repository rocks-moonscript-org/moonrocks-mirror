package = 'lua-Rotas'
version = '0.3.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-Rotas/raw/releases/lua-rotas-0.3.0.tar.gz',
    md5 = '5f22a8344124c0853987ee84d8d72aa6',
    dir = 'lua-Rotas-0.3.0',
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
