package = 'lua-Rotas'
version = '0.3.1-1'
source = {
    url = 'https://framagit.org/fperrad/lua-Rotas/raw/releases/lua-rotas-0.3.1.tar.gz',
    md5 = '9d72ab5f81cbf71845fc2c343add8e03',
    dir = 'lua-Rotas-0.3.1',
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
