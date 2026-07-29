package = "nvoip"
version = "0.1.1-1"

source = {
  url = "git+https://github.com/Nvoip/nvoip-lua.git",
  tag = "v0.1.1"
}

description = {
  summary = "Lua SDK and examples for the Nvoip API v2",
  detailed = "Official Lua SDK for Nvoip API v2 with OAuth, calls, OTP, WhatsApp templates, SMS, and balance helpers.",
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
