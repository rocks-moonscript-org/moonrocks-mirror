package = "argparse-temp"
version = "0.7.3-1"
source = {
   url = "https://github.com/Freed-Wu/argparse/archive/0.7.3.zip",
   dir = "argparse-0.7.3"
}
description = {
   summary = "A feature-rich command-line argument parser",
   detailed = "Argparse supports positional arguments, options, flags, optional arguments, subcommands and more. Argparse automatically generates usage, help, and error messages, and can generate shell completion scripts.",
   homepage = "https://github.com/luarocks/argparse",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.6"
}
build = {
   type = "builtin",
   modules = {
      ["argparse-temp"] = "src/argparse.lua"
   }
}
