package = "kong-o2b-ticketing"
version = "0.0.1-0"


supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/chalkan3/kong-ticket-plugin",
  tag = "0.0.3",
  dir = "kong-o2b-ticketing"
}

description = {
  summary = "ticketing is a plugin for save user data between request.",
  homepage = "https://github.com/chalkan3/kong-ticket-plugin",
  license = "MIT"
}

dependencies = {
  "lua-cjson",
  "dkjson"
}

local pluginName = "kong-o2b-ticketing"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-kong-ticketing.handler"] = "kong/plugins/kong-ticketing/handler.lua",
    ["kong.plugins.kong-kong-ticketing.schema"] = "kong/plugins/kong-ticketing/schema.lua",
    ["kong.plugins.kong-kong-ticketing.daos"] = "kong/plugins/kong-ticketing/daos.lua",
    ["kong.plugins.kong-kong-ticketing.entities.ticket"] = "kong/plugins/kong-ticketing/entities/ticket.lua",
    ["kong.plugins.kong-kong-ticketing.entities.filter"] = "kong/plugins/kong-ticketing/entities/filter.lua",
    ["kong.plugins.kong-kong-ticketing.factory.ticketFactory"] = "kong/plugins/kong-ticketing/factory/ticketFactory.lua",
    ["kong.plugins.kong-kong-ticketing.helpers.async"] = "kong/plugins/kong-ticketing/helpers/async.lua",
    ["kong.plugins.kong-kong-ticketing.migrations"] = "kong/plugins/kong-ticketing/migrations/init.lua",
    ["kong.plugins.kong-kong-ticketing.migrations.000_base_ticketing"] = "kong/plugins/kong-ticketing/migrations/000_base_ticketing.lua",
  }
}