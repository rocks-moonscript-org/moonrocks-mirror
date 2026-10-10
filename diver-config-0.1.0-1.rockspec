package = 'diver-config'
version = '0.1.0-1'
source = {
    url = 'git+https://github.com/qompassai/luarocks.git',
    dir = 'luarocks/config',
}
description = {
    summary = 'Diver config library modules: config.ui.* (UI library: icons, image rendering, themes, virtual text) and config.data.* (database adapters).',
    homepage = 'https://github.com/qompassai/luarocks',
    license = 'Apache-2.0',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['config.data'] = 'lua/config/data/init.lua',
        ['config.data.adapter'] = 'lua/config/data/adapter.lua',
        ['config.data.common'] = 'lua/config/data/common.lua',
        ['config.data.csv'] = 'lua/config/data/csv.lua',
        ['config.data.duckdb'] = 'lua/config/data/duckdb.lua',
        ['config.data.mariadb'] = 'lua/config/data/mariadb.lua',
        ['config.data.mysql'] = 'lua/config/data/mysql.lua',
        ['config.data.psql'] = 'lua/config/data/psql.lua',
        ['config.data.redis'] = 'lua/config/data/redis.lua',
        ['config.data.sql'] = 'lua/config/data/sql.lua',
        ['config.data.sqlite'] = 'lua/config/data/sqlite.lua',
        ['config.ui'] = 'lua/config/ui/init.lua',
        ['config.ui.cmdline'] = 'lua/config/ui/cmdline.lua',
        ['config.ui.colors'] = 'lua/config/ui/colors.lua',
        ['config.ui.decor'] = 'lua/config/ui/decor.lua',
        ['config.ui.float'] = 'lua/config/ui/float.lua',
        ['config.ui.icons'] = 'lua/config/ui/icons.lua',
        ['config.ui.illuminate'] = 'lua/config/ui/illuminate.lua',
        ['config.ui.image'] = 'lua/config/ui/image.lua',
        ['config.ui.line'] = 'lua/config/ui/line.lua',
        ['config.ui.lsp_health'] = 'lua/config/ui/lsp_health.lua',
        ['config.ui.nb'] = 'lua/config/ui/nb.lua',
        ['config.ui.nerd'] = 'lua/config/ui/nerd.lua',
        ['config.ui.padding'] = 'lua/config/ui/padding.lua',
        ['config.ui.render'] = 'lua/config/ui/render.lua',
        ['config.ui.startup_profile'] = 'lua/config/ui/startup_profile.lua',
        ['config.ui.themes'] = 'lua/config/ui/themes.lua',
        ['config.ui.transparency'] = 'lua/config/ui/transparency.lua',
        ['config.ui.ui'] = 'lua/config/ui/ui.lua',
        ['config.ui.vt'] = 'lua/config/ui/vt.lua',
        ['config.ui.w3m'] = 'lua/config/ui/w3m.lua'
    }
}
