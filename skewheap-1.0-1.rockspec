package = "skewheap"
version = "1.0-1"

source = {
  url = "git://github.com/sysread/lua-skewheap",
  tag = "v1.0"
}

description = {
  summary    = "A self-adjusting, mergeable min heap",
  maintainer = "Jeff Ober <sysread@fastmail.fm>",
  homepage   = "https://github.com/sysread/lua-skewheap",
  license    = "MIT",
}

dependencies = {
  "lua >= 5.1, < 5.4"
}

build = {
  type = "builtin",
  modules = {
    skewheap = "skewheap.lua"
  }
}
