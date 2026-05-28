package = 'shiva-test'
version = '1.0-1'

source = {
    url = 'git+https://github.com/adrianmejias/shiva-test.git',
    tag = 'v1.0',
}

description = {
    summary  = 'Standalone FiveM testing framework — test outside of FiveM',
    detailed = [[
        shiva-test lets FiveM developers write and run tests in standard Lua 5.4
        without starting a FiveM server. It simulates the FiveM environment
        (natives, events, exports, oxmysql database, StateBags) so module code
        runs in a test harness.

        Framework-agnostic: works with Shiva, QBCore, ESX, Qbox, or any FiveM
        resource. Provides a busted-compatible API (describe/it/expect) and
        rich assertion library.
    ]],
    homepage = 'https://github.com/adrianmejias/shiva-test',
    license  = 'MIT',
}

dependencies = {
    'lua >= 5.4',
}

build = {
    type    = 'builtin',
    modules = {
        ['shiva-test']                = 'src/init.lua',
        ['shiva-test.runner']         = 'src/runner.lua',
        ['shiva-test.environment']    = 'src/environment.lua',
        ['shiva-test.natives']        = 'src/natives.lua',
        ['shiva-test.events']         = 'src/events.lua',
        ['shiva-test.exports']        = 'src/exports.lua',
        ['shiva-test.database']       = 'src/database.lua',
        ['shiva-test.statebags']      = 'src/statebags.lua',
        ['shiva-test.mocks.fivem']    = 'src/mocks/fivem.lua',
        ['shiva-test.mocks.qbcore']   = 'src/mocks/qbcore.lua',
        ['shiva-test.mocks.esx']      = 'src/mocks/esx.lua',
        ['shiva-test.mocks.ox_lib']   = 'src/mocks/ox_lib.lua',
        ['shiva-test.mocks.shiva']    = 'src/mocks/shiva.lua',
    },
}
