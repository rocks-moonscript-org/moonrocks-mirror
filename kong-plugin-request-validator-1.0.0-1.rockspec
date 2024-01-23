local plugin_name = "request-validator"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.0"
local rockspec_revision = "1"

local github_account_name = "ResultadosDigitais"
local github_repo_name = "kong-plugin-"..plugin_name
local git_checkout = package_version == "dev" and "main" or package_version

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}

description = {
  summary = "Validate preconditions to allow or deny a request based on rules defined in config section",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
  license = "Apache 2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
