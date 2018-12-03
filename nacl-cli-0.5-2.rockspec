package = "nacl-cli"
version = "0.5-2"
source = {
   url = "git://github.com/eriksank/nacl-cli",
    tag = "0.5-2"
}
description = {
   summary = "nacl-cli is a program that provides a text-based, serialization format for Daniel Bernstein's tweetnacl library",
   homepage = "https://github.com/eriksank/nacl-cli",
   license = "LGPL",
   maintainer="Erik Poupaert <erik@sankuru.biz>"
}

dependencies = {
    'lua >= 5.1',
    'luatweetnacl',
    'base58',
    'lbase64', 
    'sha2'
}

build = {
   type = "builtin",
   modules = {
      armour = "armour.lua",
      cli = "cli.lua",
      ["cli-cmds"] = "cli-cmds.lua",
      ["ext-string"] = "ext-string.lua",
      ["nacl-cli"] = "nacl-cli.lua",
      util = "util.lua"
   }
}

