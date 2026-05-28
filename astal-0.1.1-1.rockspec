---@diagnostic disable:lowercase-global
package = 'astal'
version = '0.1.1-1'

source = {
    url = 'git+https://github.com/tokyob0t/astal-lua.git',
}

description = {
    summary = 'lua bindings for libastal.',
    homepage = 'https://aylur.github.io/astal/',
    license = 'LGPL-2.1',
}

dependencies = {
    'lua >= 5.1, < 5.4',
    'lgi >= 0.9.2',
}

build = {
    type = 'builtin',
    modules = {
        ['astal.init'] = 'astal/init.lua',
        ['astal.binding'] = 'astal/binding.lua',
        ['astal.file'] = 'astal/file.lua',
        ['astal.process'] = 'astal/process.lua',
        ['astal.time'] = 'astal/time.lua',
        ['astal.variable'] = 'astal/variable.lua',
        ['astal.application'] = 'astal/application.lua',
        --- Gtk3
        ['astal.gtk3.init'] = 'astal/gtk3/init.lua',
        ['astal.gtk3.astalify'] = 'astal/gtk3/astalify.lua',
        ['astal.gtk3.widget'] = 'astal/gtk3/widget.lua',
        ['astal.gtk3.app'] = 'astal/gtk3/app.lua',
        --- Gtk4
        ['astal.gtk4.init'] = 'astal/gtk4/init.lua',
        ['astal.gtk4.astalify'] = 'astal/gtk4/astalify.lua',
        ['astal.gtk4.widget'] = 'astal/gtk4/widget.lua',
        ['astal.gtk4.app'] = 'astal/gtk4/app.lua',
        --- Additional
        ['astal.requests'] = 'astal/requests.lua',
    },
    install = {
        bin = {
            ['astal-lua'] = 'bin/init.lua',
        },
    },
    build_dependencies = {
        { 'argparse >= 0.8.1', optional = true },
    },
}
