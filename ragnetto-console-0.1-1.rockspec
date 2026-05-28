package = "ragnetto-console"
version = "0.1-1"
source = {
   url = "git+https://github.com/ragnetto-gab/ragnetto-console.git",
}
description = {
   summary = "ANSI console control utility",
   detailed = [[
      This module provides terminal manipulation functions.
      It is part of the Ragnetto module suite.
   ]],
   homepage = "https://github.com/ragnetto-gab/ragnetto-console",
   maintainer = "Gabriele Secci <ragnettosoftware@gmail.com>",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ragnetto.console"] = "src/ragnetto/console.lua"
   }
}
