package = "luarocks-fetch-gitrec"
version = "0.2-2"
source = {
  url = "https://github.com/siffiejoe/luarocks-fetch-gitrec/archive/v0.2.zip",
  dir = "luarocks-fetch-gitrec-0.2"
}
description = {
  summary = "Support for Git submodules in LuaRocks",
  detailed = [[
  luarocks-fetch-gitrec adds a new pseudo-URL 'gitrec://...' that
  causes LuaRocks to fetch the corresponding git repository
  *including* Git submodules.
]],
  homepage = "http://github.com/siffiejoe/luarocks-fetch-gitrec",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.5"
}
build = {
  type = "builtin",
  modules = {
    ["luarocks.fetch.gitrec"] = "gitrec.lua",
    ["luarocks.fetch.gitrec_http"] = "gitrec_http.lua",
    ["luarocks.fetch.gitrec_https"] = "gitrec_https.lua",
    ["luarocks.fetch.gitrec_ssh"] = "gitrec_ssh.lua",
    ["luarocks.fetch.gitrec_file"] = "gitrec_file.lua",
  }
}

