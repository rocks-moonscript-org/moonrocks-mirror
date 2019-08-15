package = "argparse"
version = "0.7.0-1"
source = {
   url = "https://github.com/luarocks/argparse/archive/0.7.0.zip",
   md5 = "97c546a674e50ec3f1f766e50e11775a",
   dir = "argparse-0.7.0"
}
description = {
   summary = "A feature-rich command-line argument parser",
   detailed = "Argparse supports positional arguments, options, flags, optional arguments, subcommands and more. Argparse automatically generates usage, help, and error messages, and can generate shell completion scripts.",
   homepage = "https://github.com/luarocks/argparse",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      argparse = "src/argparse.lua"
   }
}
