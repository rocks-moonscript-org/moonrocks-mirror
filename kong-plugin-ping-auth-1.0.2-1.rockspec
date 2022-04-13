package = "kong-plugin-ping-auth"
version = "1.0.2-1"

source = {
   url = "git://github.com/pingidentity/kong-plugin-ping-auth"
}

description = {
   summary = "A Kong plugin to integrate Ping products.",
   detailed = [[
      This plugin allows Kong to utilize Ping products for access control and authentication via the sideband API.
      This allows products such as PingAccess and PingAuthorize (among others) to be utilized within the flow of
      the Kong gateway.
   ]],
   homepage = "https://support.pingidentity.com/s/marketplace-integration/a7i8Z000000bsRIQAY/external-authorization-for-kong-gateway",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ping-auth.access"] = "ping-auth/access.lua",
      ["kong.plugins.ping-auth.handler"] = "ping-auth/handler.lua",
      ["kong.plugins.ping-auth.network_handler"] = "ping-auth/network_handler.lua",
      ["kong.plugins.ping-auth.response"] = "ping-auth/response.lua",
      ["kong.plugins.ping-auth.schema"] = "ping-auth/schema.lua"
   }
}
