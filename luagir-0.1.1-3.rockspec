---@diagnostic disable:lowercase-global
package = 'luagir'
version = '0.1.1-3'

source = { url = 'git+https://github.com/tokyob0t/luagir.git' }

description = {
    summary = 'Autocompletion for lua lgi using *.gir files.',
    homepage = 'https://github.com/tokyob0t/luagir',
    license = 'LGPL-2.1',
}

dependencies = { 'lua >= 5.1', 'xml2lua', 'argparse' }

build = {
    type = 'builtin',
    install = { bin = { ['luagir'] = 'bin/init.lua' } },
    modules = {
        ['luagir'] = 'luagir/init.lua',
        ---
        ['luagir.handlers.parseBitfields'] = 'luagir/handlers/parseBitfields.lua',
        ['luagir.handlers.parseClasses'] = 'luagir/handlers/parseClasses.lua',
        ['luagir.handlers.parseConstants'] = 'luagir/handlers/parseConstants.lua',
        ['luagir.handlers.parseEnumerations'] = 'luagir/handlers/parseEnumerations.lua',
        ['luagir.handlers.parseFunctions'] = 'luagir/handlers/parseFunctions.lua',
        --- utils
        ['luagir.utils.file'] = 'luagir/utils/file.lua',
        ['luagir.utils.print'] = 'luagir/utils/print.lua',
        ['luagir.utils.repository'] = 'luagir/utils/repository.lua',
        ['luagir.utils.xml'] = 'luagir/utils/xml.lua',
        --- emitters
        ['luagir.emitters'] = 'luagir/emitters/init.lua',
        --- Overrides
        ['luagir.overrides.default'] = 'luagir/overrides/default.lua',
        ['luagir.overrides.GLib-2.0'] = 'luagir/overrides/GLib-2.0.lua',
        ['luagir.overrides.Gio-2.0'] = 'luagir/overrides/Gio-2.0.lua',
    },
}
