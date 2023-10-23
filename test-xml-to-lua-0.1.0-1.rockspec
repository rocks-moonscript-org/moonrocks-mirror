local plugin_name = "test-xml-to-lua"
local package_name = "test-xml-to-lua"
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "BA-DipikaShekhawat"
local github_repo_name = "kong-plugin-test-xml-to-lua"
local git_checkout = "master"


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://github.com/BA-DipikaShekhawat/"..github_repo_name,
  license = "Apache 2.0",
}


dependencies = {
   "xml2lua >= 1.4",
   "lua-cjson >= 2.1"
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
