package = "chalk"
version = "0.1.0-1"
source = {
   url = "git://github.com/Desvelao/chalk",
   tag = "v0.1.0"
}
description = {
   summary = [[Colorize strings to create nice messages in terminal]],
   homepage = "https://github.com/Desvelao/chalk",
   license = "MIT"
}
dependencies = {
   "lua>=5.1"
}
build = {
   type = "builtin",
   modules = {
      chalk = "chalk.lua"
   }
}
