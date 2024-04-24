package = "kong-plugin-mithril"  -- TODO: rename, must match the info in the filename of this rockspec!
                                 -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.5.4-1"             -- TODO: renumber, must match the info in the filename of this rockspec!

supported_platforms = {"linux", "macosx"}
source = {
  url = "git+ssh://git@github.com:edenlabllc/kong-plugin-mithril.git",
  tag = "0.5.4"
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {}

local pluginName = "mithril"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".mint"] = "kong/plugins/"..pluginName.."/mint.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".warden"] = "kong/plugins/"..pluginName.."/warden.lua",
    ["kong.plugins."..pluginName..".rate-limiting"] = "kong/plugins/"..pluginName.."/rate-limiting/init.lua",
    ["kong.plugins."..pluginName..".rate-limiting.policy"] = "kong/plugins/"..pluginName.."/rate-limiting/policy.lua",
  }
}
