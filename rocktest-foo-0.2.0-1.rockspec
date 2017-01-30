package = "rocktest-foo"
version = "0.2.0-1"

source = {
  url = "git://github.com/scivey/rocktest.git",
  tag = "v0.2.0",
}

description = {
  summary = "Test package to figure out luarocks",
  homepage = "https://github.com/scivey/rocktest",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",  -- lua-nginx-module needed
}

build = {
    type = "builtin",
    modules = {
        ["rocktest.foo"] = "lib/rocktest/foo.lua"
    }
}