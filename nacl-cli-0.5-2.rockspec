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
      ["lnacl-cli.armour"] = "lnacl-cli/armour.lua",
      ["lnacl-cli.cli"] = "lnacl-cli/cli.lua",
      ["lnacl-cli.cli-cmds"] = "lnacl-cli/cli-cmds.lua",
      ["lnacl-cli.ext-string"] = "lnacl-cli/ext-string.lua",
      ["lnacl-cli.util"] = "lnacl-cli/util.lua",
   }
}

