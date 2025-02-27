---@diagnostic disable: lowercase-global
rockspec_format = '3.0'
package = 'lphysfs'
version = '8b8665e-2'
source = {
  url = 'git+https://github.com/pearagit/lphysfs.git',
}
description = {
  homepage = 'https://github.com/pearagit/lphysfs.git',
  license = 'Lua License',
  summary = 'PhysicsFS bindings for Lua',
  detailed = 'Lua bindings for PhysicsFS, a library to provide abstract access to various archives. https://icculus.org/physfs/',
}
dependencies = {
  'lua ~> 5.1',
}
external_dependencies = {
  PHYSFS = {
    header = 'physfs.h',
  },
}
build = {
  type = 'builtin',
  modules = {
    lphysfs = {
      sources = 'src/lphysfs.c',
      libraries = { 'physfs' },
      incdirs = { '$(PHYSFS_INCDIR)' },
      libdirs = { '$(PHYSFS_LIBDIR)' },
    },
  },
  copy_directories = {
    'tests',
  },
}
test = {
  type = 'command',
  script = 'tests/test.lua',
}
