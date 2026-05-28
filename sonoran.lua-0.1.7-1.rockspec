package = "sonoran.lua"
version = "0.1.7-1"

source = {
  url = "git+https://github.com/Sonoran-Software/Sonoran.Lua.git",
  tag = "v0.1.7"
}

description = {
  summary = "FiveM-first Lua SDK for Sonoran CAD v2 endpoints",
  homepage = "https://github.com/Sonoran-Software/Sonoran.Lua"
}

dependencies = {
  "lua >= 5.4"
}

build = {
  type = "builtin",
  modules = {
    ["sonoran"] = "lua/sonoran/init.lua",
    ["sonoran.client"] = "lua/sonoran/client.lua",
    ["sonoran.adapters.fivem"] = "lua/sonoran/adapters/fivem.lua"
  }
}
