package = "lub"
version = "1.0.2-1"
source = {
  url = "http://lubyk.org/archive/lub-REL-1.0.2.tar.gz",
  dir = 'lub-REL-1.0.2',
}
description = {
  summary = "Lubyk base module.",
  detailed = [[
    lub: helper code, class declaration.

    lub.Autoload: autoloading classes in modules.

    lub.Dir: a simple directory traversal class.

    lub.Template: a simple templating class.
  ]],
  homepage = "http://lubyk.org",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.3",
  "luafilesystem >= 1.5.0",
}
build = {
  type = 'builtin',
  modules = {
    ['lub'            ] = 'lub/init.lua',
    ['lub.Autoload'   ] = 'lub/Autoload.lua',
    ['lub.Dir'        ] = 'lub/Dir.lua',
    ['lub.Template'   ] = 'lub/Template.lua',
  },
}
