rockspec_format = "3.0"
package = "waservix"
version = "1.0.1-1"
source = {
  url = "git+https://github.com/TekservixHQ/waservix-lua.git",
  tag = "v1.0.1",
}
description = {
  summary = "WAservix WhatsApp API Gateway: official Lua client by Tekservix. Send WhatsApp messages, images and documents from your own number, with status tracking and webhooks.",
  detailed = [[
WAservix links your own WhatsApp number by QR code and gives you a REST API: send text,
images, documents, locations and polls, check message status, manage contacts and groups,
and verify webhooks. Needs a Tekservix account with WAservix and your number's API key. Works on Lua 5.1 to 5.4 and
LuaJIT; the HTTP transport can be swapped (for example for OpenResty).
]],
  homepage = "https://tekservix.com/waservix/",
  issues_url = "https://github.com/TekservixHQ/waservix-lua/issues",
  license = "MIT",
  maintainer = "Tekservix <support@tekservix.com>",
  labels = { "whatsapp", "whatsapp-api", "messaging", "api", "tekservix" },
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
    ["waservix"] = "src/waservix.lua",
  },
}
test_dependencies = { "busted" }
test = { type = "busted" }
