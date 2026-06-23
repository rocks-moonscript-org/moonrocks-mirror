---@diagnostic disable:lowercase-global
package = 'astal'
version = '0.2.1-3'

source = { url = 'git+https://github.com/tokyob0t/astal-lua' }

description = {
    summary = 'lua bindings for libastal.',
    homepage = 'https://aylur.github.io/astal/',
    license = 'LGPL-2.1',
}

dependencies = { 'lua >= 5.1', 'lgi >= 0.9.2' }

build = {
    type = 'builtin',
    modules = {
        ['astal.init'] = 'astal/init.lua',
        ['astal._utils'] = 'astal/_utils.lua',
        ['astal._props'] = 'astal/_props.lua',
        ['astal._construct'] = 'astal/_construct.lua',
        --- Overrides
        ['astal._overrides.init'] = 'astal/_overrides/init.lua',
        ['astal._overrides.Gio'] = 'astal/_overrides/Gio.lua',
        ['astal._overrides.GLib'] = 'astal/_overrides/GLib.lua',

        --- Overrides
        ['astal.application'] = 'astal/application.lua',
        ['astal.binding'] = 'astal/binding.lua',
        ['astal.file'] = 'astal/file.lua',
        ['astal.process'] = 'astal/process.lua',
        ['astal.requests'] = 'astal/requests.lua',
        ['astal.time'] = 'astal/time.lua',
        ['astal.variable'] = 'astal/variable.lua',

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
    },
    install = {
        bin = { ['astal-lua'] = 'bin/init.lua' },
    },
    build_dependencies = { { 'argparse >= 0.8.1', optional = true } },
}
