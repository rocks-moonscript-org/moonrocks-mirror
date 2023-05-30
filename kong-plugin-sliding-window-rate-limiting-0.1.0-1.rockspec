package = "kong-plugin-sliding-window-rate-limiting"
version = "0.1.0-1"

source = {
 url    = "https://github.com/giovanibrioni/kong-plugin-sliding-window-rate-limiting",
 branch = "main"
}

description = {
  summary = "This plugin has the same purpose as the [rate-limiting plugin](https://github.com/Kong/kong/tree/master/kong/plugins/), although but this implementation has better accuracy.",
}

dependencies = {
  "lua ~> 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.sliding-window-rate-limiting.handler"] = "kong/plugins/sliding-window-rate-limiting/handler.lua",
    ["kong.plugins.sliding-window-rate-limiting.policies.init"] = "kong/plugins/sliding-window-rate-limiting/policies/init.lua",
    ["kong.plugins.sliding-window-rate-limiting.schema"] = "kong/plugins/sliding-window-rate-limiting/schema.lua",
  }
}
