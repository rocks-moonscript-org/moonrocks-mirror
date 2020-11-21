package = "kong-o2b-ticketing"
version = "0.0.1-0"


supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/chalkan3/kong-ticket-plugin",
  tag = "v0.0.1",
}

description = {
  summary = "ticketing is a plugin for save user data between request.",
  homepage = "https://github.com/chalkan3/kong-ticket-plugin",
  license = "MIT"
}

dependencies = {
  "lua-cjson",
  "dkjson",
  "lua-resty-openidc" 
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.ticketing.handler"] = "kong/plugins/kong-O2B-ticketing/handler.lua",
    ["kong.plugins.ticketing.schema"] = "kong/plugins/kong-O2B-ticketing/schema.lua",
    ["kong.plugins.ticketing.daos"] = "kong/plugins/kong-O2B-ticketing/daos.lua",
    ["kong.plugins.ticketing.entities.ticket"] = "kong/plugins/kong-O2B-ticketing/entities/ticket.lua",
    ["kong.plugins.ticketing.entities.filter"] = "kong/plugins/kong-O2B-ticketing/entities/filter.lua",
    ["kong.plugins.ticketing.factory.ticketFactory"] = "kong/plugins/kong-O2B-ticketing/factory/ticketFactory.lua",
    ["kong.plugins.ticketing.helpers.async"] = "kong/plugins/kong-O2B-ticketing/helpers/async.lua",
    ["kong.plugins.ticketing.migrations"] = "kong/plugins/kong-O2B-ticketing/migrations/init.lua",
    ["kong.plugins.ticketing.migrations.000_base_ticketing"] = "kong/plugins/kong-O2B-ticketing/migrations/000_base_ticketing.lua",
  }
}