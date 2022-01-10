package = "lua-resty-pushover"
version = "0.1.0-0"
source = {
  url = "git://github.com/flrgh/lua-resty-pushover",
  tag = "0.1.0"
}
description = {
  summary = "Lua API client library for pushover.net",
  homepage = "https://github.com/flrgh/lua-resty-pushover",
  license = "MIT",
  maintainer = "Michael Martin <flrgh@protonmail.com>"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.16.1-0",
  "lua-cjson >= 2.1.0",
}
build = {
  type = "builtin",
  modules = {
    ["resty.pushover"] = "lib/resty/pushover.lua",
  }
}
