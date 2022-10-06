package = 'pixie'
version = '0.1-0'

source = {
    url = 'git+ssh://git@github.com:pixie-theme/pixie-lua.git'
}

description = {
    summary = 'Pixie Lua rock',
    homepage = 'https://github.com/pixie-theme/pixie-lua',
    license = 'MIT'
}

dependencies = {
    'lua >= 5.1',
    'lua-rtoml'
}

build = {
    type = 'builtin',
    modules = {
        ['pixie'] = "src/pixie/init.lua",
        ['pixie.schema'] = "src/pixie/schema.lua",
    }
}
