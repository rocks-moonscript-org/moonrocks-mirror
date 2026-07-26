package = "lua-multipart-post"
version = "2.0-0"
source = {
  url = "git+https://github.com/uriid1/lua-multipart-post.git",
  tag = "v2.0",
}
description = {
  summary = "HTTP Multipart Post helper that does just that.",
  homepage = "https://github.com/uriid1/lua-multipart-post",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["multipart-post"] = "multipart-post.lua"
  }
}
