-- Package 
local plugin_name = "ngsi-ishare-policies"
local package_name = "kong-plugin-" .. plugin_name
package = package_name

-- Version
local package_version = "0.2.0"
local rockspec_revision = "1"
version = package_version .. "-" .. rockspec_revision

-- GitHub source
local github_account_name = "fiware"
local github_repo_name = "kong-plugins-fiware"
source = {
  url = "git://github.com/"..github_account_name.."/"..github_repo_name..".git",
  dir = github_repo_name.."/"..package_name,
  tag = "0.2.0"
}

-- Description
description = {
  summary = "Attribute-based access management for NGSI requests using the iSHARE framework",
  detailed = [[
  	   Inspects NGSI requests and checks for corresponding attribute-based access policies.
	   Requires an EORI and key/certificate issued by an authority and registered at an
	   iSHARE Scheme Owner/Satellite.
	   Also requires an iSHARE-compliant authorisation registry for accessing the iSHARE policies.
  ]],
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name.."/"..package_name,
  license = "MIT",
}

dependencies = {
  'lua >= 5.1',
  'lua-fiware-lib >= 0.0.5'
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
