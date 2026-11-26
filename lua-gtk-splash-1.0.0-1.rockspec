rockspec_format = '3.0'
package = 'lua-gtk-splash'
version = '1.0.0-1'

source = {
  url = 'git+https://github.com/pjjov/lua-gtk-splash.git',
  tag = 'v1.0.0',
}

description = {
  summary = 'A reusable, non-blocking splash screen for GTK apps written with LuaGObject',
  detailed = [[
    gtk_splash runs an application's startup steps (module loads, async I/O,
    custom work) on the GLib main loop while a splash window stays responsive.
    Steps are time-sliced coroutines; opaque long-running Lua code such as a
    heavy module's top level can be run under a count hook that pumps the main
    loop. Includes weighted progress, error policies with retry/skip/abort,
    show-delay and minimum-visible timing, a ready-made view, a Gtk.Builder
    view, and helpers for packaged apps (manifests, GResource searchers).
    Pure Lua; works with GTK 4 and GTK 3.
  ]],
  homepage = 'https://github.com/pjjov/lua-gtk-splash',
  license = 'Apache-2.0',
  labels = { 'gtk', 'gui', 'gobject', 'splash' },
}

dependencies = {
  'lua >= 5.1',
  'luagobject >= 0.10',
}

build = {
  type = 'builtin',
  modules = {
    ['gtk_splash'] = 'gtk_splash/init.lua',
    ['gtk_splash.scheduler'] = 'gtk_splash/scheduler.lua',
    ['gtk_splash.sources'] = 'gtk_splash/sources.lua',
    ['gtk_splash.searchers'] = 'gtk_splash/searchers.lua',
    ['gtk_splash.views.util'] = 'gtk_splash/views/util.lua',
    ['gtk_splash.views.default'] = 'gtk_splash/views/default.lua',
    ['gtk_splash.views.builder'] = 'gtk_splash/views/builder.lua',
  },
  copy_directories = { 'examples' },
}

test = {
  type = 'command',
  command = 'lua tests/run.lua',
}
