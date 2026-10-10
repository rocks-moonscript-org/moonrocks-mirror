package = 'diver-comms'
version = '0.1.0-1'
source = {
    url = 'git+https://github.com/qompassai/luarocks.git',
    dir = 'luarocks/comms',
}
description = {
    summary = 'Diver mail tooling: comms.* clients (aerc, neomutt), mail and MIME helpers.',
    homepage = 'https://github.com/qompassai/luarocks',
    license = 'Apache-2.0',
}
dependencies = {
    'lua >= 5.1',
    'diver-utils >= 0.1.0',
}
build = {
    type = 'builtin',
    modules = {
        ['comms'] = 'lua/comms/init.lua',
        ['comms.clients'] = 'lua/comms/clients/init.lua',
        ['comms.clients.aerc'] = 'lua/comms/clients/aerc.lua',
        ['comms.clients.neomutt'] = 'lua/comms/clients/neomutt.lua',
        ['comms.mail'] = 'lua/comms/mail.lua',
        ['comms.mime'] = 'lua/comms/mime.lua'
    }
}
