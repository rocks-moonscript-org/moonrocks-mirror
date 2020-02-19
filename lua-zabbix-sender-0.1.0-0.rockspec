rockspec_format = "3.0"
package = "lua-zabbix-sender"
version = "0.1.0-0"
source = {
  url = "git+https://git.kokolor.es/imo/lua-zabbix-sender",
  tag = "v0.1.0-0"
}
description = {
  summary = "A zabbix sender protocol implementation in Lua.",
  detailed = "A zabbix sender protocol implementation in Lua, for pushing monitoring data to Zabbix trapper items directly from Lua code.",
  homepage = "https://git.kokolor.es/imo/lua-zabbix-sender/src/branch/master/README.md",
  license = "MIT",
  labels = { "monitoring", "zabbix" }
}
dependencies = {
  "lua 5.3",
  "luasocket",
  "dkjson"
}
build = {
   type = "builtin",
   modules = {
      ["zabbix-sender"] = "src/zabbix-sender.lua"
   }
}
