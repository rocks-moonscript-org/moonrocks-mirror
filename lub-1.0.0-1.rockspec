package = "Lub"
version = "1.0.0-1"
source = {
   url = "http://lubyk.org/archive/lub-REL-1.0.0.tar.gz",
   dir = 'lub-REL-1.0.0',
}
description = {
   summary = "Lubyk base module.",
   detailed = [[
      lub: helper code, class declaration.

      lub.Autoload: autoloading classes in modules.

      lub.Dir: a simple directory traversal class.

      lub.Template: a simple templating class.
   ]],
   --   lub.Test: A simple yet powerful unit testing framework.
   homepage = "http://lubyk.org",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1",
   "luafilesystem >= 1.5.0",
}
build = {
  type = 'builtin',
  modules = {
    ['lub.Autoload'] = 'lub/Autoload.lua',
    ['lub.Dir'] = 'lub/Dir.lua',
    ['lub'         ] = 'lub/init.lua',
    ['lub.Template'] = 'lub/Template.lua',
  },
}
