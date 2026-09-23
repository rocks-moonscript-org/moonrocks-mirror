package = "mailgun"
version = "1.3.0-1"

source = {
  url = "git+https://github.com/leafo/lua-mailgun.git",
  tag = "v1.3.0"
}

description = {
  summary = "Send email with Mailgun",
  homepage = "https://github.com/leafo/lua-mailgun",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lpeg",
  "luasocket",
  "lua-cjson",
  "luasec",
}

build = {
  type = "builtin",
  modules = {
    ["mailgun"] = "mailgun/init.lua",
    ["mailgun.util"] = "mailgun/util.lua",
  }
}

