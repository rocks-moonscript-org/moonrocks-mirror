rockspec_format = "3.0"

local plugin_name = "adi-sanction-lists"
local package_name = "kong-" .. plugin_name
local package_version = "1.0.14"
local rockspec_revision = "1"
local execon_page = "https://github.com/alkeicam/kong-adi-sanction-lists"

local github_account_name = "ExeconOne"
local github_repo_name = package_name
local git_checkout = "v1.0.14"


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }


description = {
  summary = "Abee Digital ID Sanction Lists Kong plugin.",
  detailed = [[
    This plugin integrates with Kong to provide functionality for checking
    Abee Digital ID sanction lists (Fraud, AML) as part of the request processing pipeline. Learn more https://www.execon.pl/abee-digital-id
  ]],
  homepage = execon_page,
  license = "Apache 2.0",
  maintainer = "Maciej Grula <maciej.grula@execon.pl>"
}

source = {
  url = "git://github.com/alkeicam/kong-adi-sanction-lists",
  branch = git_checkout
}

dependencies = {
    "lua-resty-http",
    "lua-cjson",
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}