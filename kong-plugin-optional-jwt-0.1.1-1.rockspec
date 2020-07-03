package = "kong-plugin-optional-jwt"
version = "0.1.1-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")

source = {
    url = "git://github.com/PrimePassCinema/kong-plugin-optional-jwt",
    tag = "0.1.1"
}

description = {
    summary = "Kong plugin to make JWT verification optinal",
    homepage = "https://github.com/PrimePassCinema/kong-plugin-optional-jwt",
    license = "MIT"
}

dependencies = {
}

build = {
    type = "builtin",
    modules = {
      ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
      ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    }
}
