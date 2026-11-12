rockspec_format = "3.0"
package = "smsgora"
version = "1.0.1-1"
source = {
  url = "git+https://github.com/TekservixHQ/smsgora-lua.git",
  tag = "v1.0.1",
}
description = {
  summary = "SMS Gora SMS Gateway: official Lua client by Tekservix. Send and receive SMS through your own Android phones, with delivery reports and signed webhooks.",
  detailed = [[
SMS Gora turns Android phones with ordinary SIM cards into an SMS gateway. Send SMS
and bulk SMS, check delivery status, read incoming SMS and verify signed webhooks.
Needs a Tekservix account with SMS Gora and an API key. Works on Lua 5.1 to 5.4 and
LuaJIT; the HTTP transport can be swapped (for example for OpenResty).
]],
  homepage = "https://tekservix.com/smsgora/",
  issues_url = "https://github.com/TekservixHQ/smsgora-lua/issues",
  license = "MIT",
  maintainer = "Tekservix <support@tekservix.com>",
  labels = { "sms", "sms-gateway", "bulk-sms", "api", "tekservix" },
}
dependencies = {
  "lua >= 5.1",
  "dkjson >= 2.5",
  "luasocket >= 3.0",
  "luasec >= 1.0",
}
build = {
  type = "builtin",
  modules = {
    ["smsgora"] = "src/smsgora/init.lua",
    ["smsgora.hmac"] = "src/smsgora/hmac.lua",
  },
}
test_dependencies = { "busted" }
test = { type = "busted" }
