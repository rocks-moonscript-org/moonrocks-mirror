 package = "luacord"
  version = "0.1.0-1"

  source = {
    url = "git+https://github.com/buffydev-1/luacord.git",
    tag = "v0.1.0"
  }

  description = {
    summary = "Modern async Lua Discord API library",
    detailed = "LuaCord is a modern Discord API library for Lua with gateway, REST, interactions, and caching.",
    homepage = "https://github.com/buffydev-1/luacord",
    license = "MIT"
  }

  supported_platforms = { "linux", "macosx" }

  dependencies = {
    "lua >= 5.1, < 5.4",
    "cqueues",
    "http",
    "dkjson >= 2.6-1"
  }

  build = {
    type = "builtin",
    modules = {
      ["luacord"] = "luacord/init.lua",

      ["luacord.client.Client"] = "luacord/client/Client.lua",
      ["luacord.client.RESTClient"] = "luacord/client/RESTClient.lua",
      ["luacord.client.GatewayClient"] = "luacord/client/GatewayClient.lua",

      ["luacord.enums"] = "luacord/enums/init.lua",

      ["luacord.structures.Guild"] = "luacord/structures/Guild.lua",
      ["luacord.structures.Channel"] = "luacord/structures/Channel.lua",
      ["luacord.structures.Message"] = "luacord/structures/Message.lua",
      ["luacord.structures.User"] = "luacord/structures/User.lua",
      ["luacord.structures.Member"] = "luacord/structures/Member.lua",
      ["luacord.structures.Role"] = "luacord/structures/Role.lua",
      ["luacord.structures.Interaction"] = "luacord/structures/Interaction.lua",

      ["luacord.utils.Snowflake"] = "luacord/utils/Snowflake.lua",
      ["luacord.utils.Permissions"] = "luacord/utils/Permissions.lua",
      ["luacord.utils.CDN"] = "luacord/utils/CDN.lua",
      ["luacord.utils.JSON"] = "luacord/utils/JSON.lua",
      ["luacord.utils.EventEmitter"] = "luacord/utils/EventEmitter.lua",
      ["luacord.utils.Collection"] = "luacord/utils/Collection.lua"
    }
  }