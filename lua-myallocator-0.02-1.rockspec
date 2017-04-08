package = "lua-myallocator"
version = "0.02-1"
source = {
   url = "git://github.com/paragasu/lua-myallocator",
   tag = "v0.02-1"
}
description = {
   summary  = "Myallocator API client for lua",
   homepage = "https://github.com/paragasu/lua-myallcator",
   license  = "MIT",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1",
   "lua-requests"
}
build = {
   type = "builtin",
   modules = {
      ["myallocator"] = "myallocator.lua",
   }
}
