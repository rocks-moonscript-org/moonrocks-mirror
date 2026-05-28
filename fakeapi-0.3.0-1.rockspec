package = "fakeapi"
version = "0.3.0-1"
source = {
  url = "git://github.com/vncsmyrnk/fakeapi.git",
}
description = {
  homepage = "https://github.com/vncsmyrnk/fakeapi",
  license = "GPL-3.0",
}
dependencies = {
  "lua ~> 5.1",
}
build = {
  type = "builtin",
  modules = {
    fakeapi = "api/lua/fakeapi.lua",
  },
}
