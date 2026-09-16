rockspec_format = "3.0"
package = "pling"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/Desvelao/pling.git",
   tag = "v0.1.0",
}

description = {
   summary = "Standalone Lua library for sending notifications through pluggable channels",
   detailed = [[
      Channel notifiers (audio, GPIO, MQTT, Slack, Discord, custom webhook,
      email) sharing a common M.new(...) / instance:send(destination,
      notification) -> ok, err convention. A notification is an opaque,
      caller-defined table - the library never assumes any particular
      fields. No routing/rule-matching is included; callers build that on
      top.
   ]],
   homepage = "https://github.com/Desvelao/pling",
   license = "MIT",
   labels = { "discord", "notifications", "slack" },
}

dependencies = {
   "lua >= 5.1, < 5.2",
   "lua-cjson == 2.1.0.10-1",
   "luasec == 1.3.2-1",
   "luasocket == 3.1.0-1",
   "luamqtt == 3.5.0-1",
   -- luamqtt's bitwrap module requires the `bit` module for bitwise ops on
   -- Lua 5.1 (no native bitwise operators) - a real transitive dependency
   -- of the mqtt notifier, not just pibuzz's pipeline/runner.
   "luabitop == 1.0.3-1",
}

build = {
   type = "builtin",
   modules = {
      ["pling"] = "src/pling/init.lua",
      ["pling.logger"] = "src/pling/logger.lua",
      ["pling.notifiers.audio"] = "src/pling/notifiers/audio.lua",
      ["pling.notifiers.gpio"] = "src/pling/notifiers/gpio.lua",
      ["pling.notifiers.mqtt"] = "src/pling/notifiers/mqtt.lua",
      ["pling.notifiers.slack"] = "src/pling/notifiers/slack.lua",
      ["pling.notifiers.discord"] = "src/pling/notifiers/discord.lua",
      ["pling.notifiers.webhook"] = "src/pling/notifiers/webhook.lua",
      ["pling.notifiers.webhook_transport"] = "src/pling/notifiers/webhook_transport.lua",
      ["pling.notifiers.email"] = "src/pling/notifiers/email.lua",
   },
}
