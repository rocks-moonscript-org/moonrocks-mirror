package = 'diver-utils'
version = '0.1.0-1'
source = {
    url = 'git+https://github.com/qompassai/luarocks.git',
    dir = 'luarocks/utils',
}
description = {
    summary = 'Diver foundations: shared utility library (utils.*), tools.*, plus the shared primitives other diver rocks build on (security.rce safe-exec, research.docs header builder, config.core.parser).',
    homepage = 'https://github.com/qompassai/luarocks',
    license = 'Apache-2.0',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['config.core.parser'] = 'lua/config/core/parser.lua',
        ['research.docs'] = 'lua/research/docs.lua',
        ['security.rce'] = 'lua/security/rce.lua',
        ['tools'] = 'lua/tools/init.lua',
        ['tools.video'] = 'lua/tools/video.lua',
        ['utils'] = 'lua/utils/init.lua',
        ['utils.calendar'] = 'lua/utils/calendar.lua',
        ['utils.codeactions'] = 'lua/utils/codeactions.lua',
        ['utils.ddx'] = 'lua/utils/ddx.lua',
        ['utils.encoder'] = 'lua/utils/encoder.lua',
        ['utils.hledger'] = 'lua/utils/hledger.lua',
        ['utils.json'] = 'lua/utils/json.lua',
        ['utils.notify'] = 'lua/utils/notify.lua',
        ['utils.options'] = 'lua/utils/options/init.lua',
        ['utils.options.buffer'] = 'lua/utils/options/buffer.lua',
        ['utils.options.global'] = 'lua/utils/options/global.lua',
        ['utils.options.globals'] = 'lua/utils/options/globals.lua',
        ['utils.options.window'] = 'lua/utils/options/window.lua',
        ['utils.rpc'] = 'lua/utils/rpc.lua',
        ['utils.shell'] = 'lua/utils/shell.lua',
        ['utils.snippets'] = 'lua/utils/snippets.lua',
        ['utils.sync'] = 'lua/utils/sync.lua',
        ['utils.tmux'] = 'lua/utils/tmux.lua',
        ['utils.toolmgr'] = 'lua/utils/toolmgr.lua'
    }
}
