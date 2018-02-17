package = "injarg"
version = "0.1.0-0"

description = {
   summary = "inject == inj[ect]arg[s]",
   detailed = "Command-line tool that allows to call an app with arguments from an args file.",
   license = "MIT",
   homepage = "https://github.com/aiq/injarg"
}

source = {
   url = "https://github.com/aiq/injarg/archive/v0.1.0.tar.gz",
   md5 = "f89e2e74a83d07655941b065a59b42dd",
   dir = "injarg-0.1.0"
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem"
}

build = {
   type = "builtin",
   modules = {},
   install = {
      bin = {
         [ "injarg" ] = "bin/injarg"
      }
   }
}
