package = 'loggedkv'
version = '0.1-4'
source = {
  url = 'https://hengestone@bitbucket.org/hengestone/loggedkv',
  tag = '0.1-4'
}
description = {
  summary  = 'Append log persistence for lua tables',
  homepage = 'hg://bitbucket.org/hengestone/loggedkv',
  license  = 'MIT/X11',
}
dependencies = {
  'lua >= 5.1'
}

build = {
  type    = 'builtin',
  modules = {
    ["loggedkv"] = "lua/loggedkv.lua",
    ["base64"] ="lua/base64.lua"
    }
}

