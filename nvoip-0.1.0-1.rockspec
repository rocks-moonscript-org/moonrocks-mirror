package = "nvoip"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/Nvoip/nvoip-lua.git",
  tag = "v0.1.0"
}

description = {
  summary = "SDK Lua oficial para a API v2 da Nvoip",
  detailed = [[Cliente Lua para integrar OAuth, chamadas, OTP, WhatsApp, SMS e saldo com a API v2 da Nvoip.]],
  homepage = "https://www.nvoip.com.br/",
  license = "GPL-3.0-only"
}

dependencies = {
  "lua >= 5.1",
  "luasec >= 1.0.0",
  "luasocket >= 3.0.0",
  "lua-cjson >= 2.1.0"
}

build = {
  type = "builtin",
  modules = {
    nvoip = "nvoip.lua"
  }
}
