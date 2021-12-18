package = "backup"
version = "0.2-1"
source = {
   url = "git+https://github.com/mikhel1984/backup"
}
description = {
   summary = "Small version control system.",
   detailed = [[
     A library for local version control of text files. It allows to
     save and restore changes, make "branches" and merge them.
     To call the library, create configuration file in the project folder.
     See the details on the homepage.
   ]],
   homepage = "https://github.com/mikhel1984/backup",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, <= 5.4"
}
build = {
   type = "builtin",
   modules = {
     backup = "backup.lua"
   }
}
