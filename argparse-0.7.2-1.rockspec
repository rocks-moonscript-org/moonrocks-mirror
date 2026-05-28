package = "argparse"
version = "0.7.2-1"
source = {
   url = "https://github.com/luarocks/argparse/archive/0.7.2.zip",
   md5 = "315f4f9a097f742349fe1acb62501ab9",
   dir = "argparse-0.7.2"
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
      argparse = "src/argparse.lua"
   }
}
