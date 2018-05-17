package = "octoflow"
version = "0.0.1-0"

description = {
  summary = "travis workflow framework",
  homepage = "https://github.com/blizzlike-org/octoflow",
  license = "GPLv2",
}

source = {
  url = "git+https://github.com/blizzlike-org/octoflow.git",
  tag = "v0.0.1",
}

dependencies = {
  "lua 5.1",
  "lua-cjson",
  "luafilesystem",
  "luasocket",
  "luasec",
  "mimetypes"
}

build = {
  type = "builtin",
  modules = {
    ["github"] = "src/github.lua",
    ["github.client"] = "src/github/client.lua",
    ["s3"] = "src/s3.lua",
    ["travis"] = "src/travis.lua"
  }
}
