rockspec_format = "3.0"
package = "lua-zabbix-sender"
version = "1.0.0-0"
source = {
  url = "git+https://codeberg.org/imo/lua-zabbix-sender.git",
  tag = "v1.0.0-0"
}
description = {
  summary = "A zabbix sender protocol implementation in Lua.",
  detailed = "A zabbix sender protocol implementation in Lua, for pushing monitoring data to Zabbix trapper items directly from Lua code.",
  homepage = "https://codeberg.org/imo/lua-zabbix-sender",
  license = "MIT",
  labels = { "monitoring", "zabbix" }
}
dependencies = {
  "lua >=5.3, <=5.4",
  "luasocket",
  "lunajson"
}
build = {
   type = "builtin",
   modules = {
      ["zabbix-sender"] = "src/zabbix-sender.lua"
   }
}
