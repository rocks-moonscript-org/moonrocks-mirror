package = 'nclassic'
version = '1.1-0'
source  = {
    url = 'git://github.com/ImpishDeathTech/nclassic',
    tag = 'nclassic-1-2-1'
}

description = {
    summary  = "A tiny class module for Lua, based on rxi/classic to take advantage of some lua 5.4 convensions.",
    detailed = [[
        A tiny class module for Lua, based on rxi/classic to:
            - Take advantage of some lua 5.4 convensions
        Includes:
            - An example angle module
    ]],
    homepage = "https://github.com/ImpishDeathTech/nclassic/blob/master/README.md",
    license  = 'MIT'
}
dependencies = {
    "lua >= 5.4"
}
build = {
    type = 'builtin',
    modules = {
        nclassic = '1_1/core.lua',
        ['nclassic.angle'] = '1_1/angle.lua',
    }
}