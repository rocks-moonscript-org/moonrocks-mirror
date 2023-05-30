package = "molly"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/ligurio/molly",
   tag = "0.1.0",
   branch = "master"
}
description = {
   summary = "A framework for distributed systems verification, with fault injection",
   homepage = "https://github.com/ligurio/molly",
   license = "ISC",
   maintainer = "Sergey Bronnikov <estetus@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   copy_directories = {},
   build_pass = false,
   variables = {
      LUADIR = "$(LUADIR)"
   }
}
