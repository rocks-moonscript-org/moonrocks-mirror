local package_name = "luamqttt"
local package_version = "1.0.0"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = "luamqttt"

package = package_name
version = package_version.."-"..rockspec_revision
source = {
	url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
	branch = (package_version == "scm") and "main" or nil,
	tag = (package_version ~= "scm") and "t"..package_version or nil,
}
description = {
	summary = "improved fork of LuaMQTT",
	detailed = [[
Fork of LuaMQTT:
luamqtt - MQTT v3.1.1 and v5.0 client library written in pure-lua.

with many improvements, wrt sockets, async behaviour, logging and more.
]],
	homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
	license = "MIT",
}
dependencies = {
	"lua >= 5.1, <= 5.4",
	"luasocket >= 3.0rc1-2",
}
build = {
	type = "builtin",
	modules = {
		["mqtt.bit53"] = "mqtt/bit53.lua",
		["mqtt.bitwrap"] = "mqtt/bitwrap.lua",
		["mqtt.client"] = "mqtt/client.lua",
		["mqtt.const"] = "mqtt/const.lua",
		mqtt = "mqtt/init.lua",
		["mqtt.ioloop"] = "mqtt/ioloop.lua",
		["mqtt.log"] = "mqtt/log.lua",
		["mqtt.protocol"] = "mqtt/protocol.lua",
		["mqtt.protocol4"] = "mqtt/protocol4.lua",
		["mqtt.protocol5"] = "mqtt/protocol5.lua",
		["mqtt.tools"] = "mqtt/tools.lua",

		["mqtt.loop.copas"] = "mqtt/loop/copas.lua",
		["mqtt.loop.detect"] = "mqtt/loop/detect.lua",
		["mqtt.loop.init"] = "mqtt/loop/init.lua",
		["mqtt.loop.ioloop"] = "mqtt/loop/ioloop.lua",
		["mqtt.loop.nginx"] = "mqtt/loop/nginx.lua",

		["mqtt.connector.copas"] = "mqtt/connector/copas.lua",
		["mqtt.connector.init"] = "mqtt/connector/init.lua",
		["mqtt.connector.luasocket"] = "mqtt/connector/luasocket.lua",
		["mqtt.connector.nginx"] = "mqtt/connector/nginx.lua",

		["mqtt.connector.base.buffered_base"] = "mqtt/connector/base/buffered_base.lua",
		["mqtt.connector.base.luasec"] = "mqtt/connector/base/luasec.lua",
		["mqtt.connector.base.non_buffered_base"] = "mqtt/connector/base/non_buffered_base.lua",
	}
}
