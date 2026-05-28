package = "luacord"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/buffydev-1/luacord.git",
  tag = "v0.2.0",
}

description = {
  summary = "Modern async Lua Discord API library (v10 support)",
  homepage = "https://github.com/buffydev-1/luacord",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "cqueues",
  "http",
  "lua-cjson",
}

build = {
  type = "builtin",
  modules = {
    ["luacord"]                        = "init.lua",
    ["luacord.client.Client"]          = "client/Client.lua",
    ["luacord.client.GatewayClient"]   = "client/GatewayClient.lua",
    ["luacord.client.RESTClient"]      = "client/RESTClient.lua",
    ["luacord.enums"]                  = "enums/init.lua",
    ["luacord.structures.Guild"]       = "structures/Guild.lua",
    ["luacord.structures.Channel"]     = "structures/Channel.lua",
    ["luacord.structures.Message"]     = "structures/Message.lua",
    ["luacord.structures.User"]        = "structures/User.lua",
    ["luacord.structures.Member"]      = "structures/Member.lua",
    ["luacord.structures.Role"]        = "structures/Role.lua",
    ["luacord.structures.Interaction"] = "structures/Interaction.lua",
    ["luacord.utils.JSON"]             = "utils/JSON.lua",
    ["luacord.utils.EventEmitter"]     = "utils/EventEmitter.lua",
    ["luacord.utils.Collection"]       = "utils/Collection.lua",
    ["luacord.utils.Snowflake"]        = "utils/Snowflake.lua",
    ["luacord.utils.Permissions"]      = "utils/Permissions.lua",
    ["luacord.utils.CDN"]              = "utils/CDN.lua",
    ["luacord.voice"]                  = "voice/init.lua",
    ["luacord.voice.VoiceGateway"]     = "voice/VoiceGateway.lua",
    ["luacord.voice.VoiceUDP"]         = "voice/VoiceUDP.lua",
    ["luacord.voice.VoiceConnection"]  = "voice/VoiceConnection.lua",
    ["luacord.voice.VoiceManager"]     = "voice/VoiceManager.lua",
    ["luacord.voice.OpusEncoder"]      = "voice/OpusEncoder.lua",
  },
}