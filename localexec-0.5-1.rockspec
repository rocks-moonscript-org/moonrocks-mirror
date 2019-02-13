package = "localexec"
version = "0.5-1"
source = {
   url = "git://github.com/eriksank/localexec",
    tag = "0.5-1"
}
description = {
   summary = "localexec is a lua module that executes a command by accepting (stdin,env,args) as input and returning (resultcode,stdout,stderr) as output",
   homepage = "https://github.com/eriksank/localexec",
   license = "LGPL",
   maintainer="Erik Poupaert <erik@sankuru.biz>"
}

dependencies = {
    'lua >= 5.1'
}

build = {
   type = "builtin",
   modules = {
      ["localexec"] = "localexec.lua"
   }
}

