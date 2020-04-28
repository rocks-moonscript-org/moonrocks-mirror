package = "Personnummer"
version = "3.0.0-1"

source = {
   url = "git://github.com/personnummer/lua",
   tag = "v3.0.0"
}

description = {
   summary = "Validate Swedish personal identity numbers",
   detailed = [[
      Personnummer is a small project that validates,
      formatting and determine sex and age from
      swedish personal identity numbers.
   ]],
   homepage = "https://github.com/personnummer/lua",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1, < 5.4"
}

build = {
   type = "builtin",
   modules = {
      personnummer = "src/init.lua"
   }
}