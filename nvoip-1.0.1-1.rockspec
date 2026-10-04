package = "nvoip"
version = "1.0.1-1"

source = {
  url = "git+https://github.com/Nvoip/nvoip-lua.git",
  tag = "v1.0.1"
}

description = {
  summary = "Lua SDK and examples for the Nvoip API v3",
  detailed = "Official Lua SDK for Nvoip API v3 with OAuth, calls, OTP, WhatsApp templates, SMS, and balance helpers.",
  homepage = "https://www.nvoip.com.br/",
  license = "GPL-3.0"
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson",
  "luasec",
  "luasocket"
}

build = {
  type = "builtin",
  modules = {
    nvoip = "nvoip.lua"
  }
}
