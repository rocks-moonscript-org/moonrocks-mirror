package = 'outcome'
version = '0.1.0-0'

source = {
   url = 'git://github.com/mtdowling/outcome',
   tag = '0.1.0',
}

description = {
   summary  = 'Functional and composable option and result types for Lua.',
   homepage = 'https://github.com/mtdowling/outcome',
   license  = 'MIT',
}

dependencies = {
   'lua >= 5.1',
}

build = {
   type = "builtin",
   modules = {
      outcome = 'outcome.lua',
   }
}
