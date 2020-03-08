package = "injarg"
version = "0.1.1-0"

description = {
   summary = "injarg == inj[ect]arg[s]",
   detailed = "Command-line tool that allows to call an app with arguments from an args file.",
   license = "MIT",
   homepage = "https://github.com/aiq/injarg"
}

source = {
   url = "https://github.com/aiq/injarg/archive/v0.1.1.tar.gz",
   md5 = "8df313d8e0d0de5982b14531f28de03e",
   dir = "injarg-0.1.1"
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
