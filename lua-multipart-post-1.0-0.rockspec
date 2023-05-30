package = "lua-multipart-post"
version = "1.0-0"
source = {
  url = "git+https://github.com/uriid1/lua-multipart-post.git",
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
