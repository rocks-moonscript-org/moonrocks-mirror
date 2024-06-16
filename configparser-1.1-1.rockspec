package = "configparser"
version = "1.1-1"
source = {
   url = "git+https://github.com/ttwizz/configparser.git"
}
description = {
   summary = "Configuration Parser",
   detailed = "This module allows you to easily parse configurations for your projects.",
   homepage = "https://github.com/ttwizz/configparser",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      configparser = "src/configparser.lua"
   }
}
