-- https://docs.konghq.com/2.2.x/plugin-development/distribution/
-- https://github.com/luarocks/luarocks/wiki/Creating-a-rock

package = "empty-params-blocker"
version = "0.1-3"
source = {
   url = "https://gitlab.com/fslhome-public/kong-plugins/empty-params-blocker/uploads/75aef5e042c9f5446848d0b1d13be81c/empty-params-blocker-0.1.tar.gz"
}
description = {
   summary = "A Kong Plugin that will block any queries that don't have any GET parameters.",
   detailed = [[
      This plugin will block any query that doesn't have GET parameters.
      You can configure the methods and whether to log.
   ]],
   homepage = "https://gitlab.com/fslhome-public/kong-plugins/empty-params-blocker",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.empty-params-blocker.handler"] = "handler.lua",
    ["kong.plugins.empty-params-blocker.schema"] = "schema.lua",
 }
}