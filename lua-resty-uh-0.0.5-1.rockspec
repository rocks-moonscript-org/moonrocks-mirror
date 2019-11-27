package = "lua-resty-uh"
version = "0.0.5-1"

description = {
  summary  = "Some modify  for the lua-resty-upstream-healthcheck",
  homepage = "https://github.com/reTsubasa/lua-resty-uh",
  license  = "MIT"
}

source = {
  url    = "git://github.com/reTsubasa/lua-resty-uh",
  branch = "0.0.5"
}
dependencies = {
  "penlight  == 1.7.0",
}


build = {
  type    = "builtin",
  modules = {
    ["resty.uh"]    = "lib/resty/upstream/healthcheck.lua",
  }
}
