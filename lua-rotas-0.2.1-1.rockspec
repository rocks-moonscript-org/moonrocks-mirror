package = 'lua-Rotas'
version = '0.2.1-1'
source = {
    url = 'https://framagit.org/fperrad/lua-Rotas/raw/releases/lua-rotas-0.2.1.tar.gz',
    md5 = '10710ccddf73935579af8a201b4159f0',
    dir = 'lua-Rotas-0.2.1',
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
