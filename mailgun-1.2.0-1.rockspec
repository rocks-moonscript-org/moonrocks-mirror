package = "mailgun"
version = "1.2.0-1"

source = {
  url = "git://github.com/leafo/lua-mailgun.git",
  branch = "v1.2.0"
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

