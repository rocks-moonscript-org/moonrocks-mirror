rockspec_format = "3.0"
package = "moon-sand"

local _version = "0.0.1"
local _rockrel = "0"
local _github = "lunarmodules"

version = _version .. "-" .. _rockrel

source = {
   url = "git+https://github.com/".._github.."/"..package..".git",
   branch = _version == "dev" and "main" or _version
}

description = {
   summary = "Just for testing automated deployments via CI, not a useful module",
   detailed = [[
      Just for testing automated deployments via CI, not a useful module
    ]],
   license = "MIT",
   homepage = "https://".._github..".github.io/"..package,
   issues_url = "https://github.com/".._github.."/"..package.."/issues",
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["moon-sand"] = "src/init.lua",
   }
}

-- touch to trigger workflow 42
