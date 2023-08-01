-- Package 
local plugin_name = "auth-endpoint-config-ishare"
local package_name = "kong-plugin-" .. plugin_name
package = package_name

-- Version
local package_version = "0.5.5"
local rockspec_revision = "1"
version = package_version .. "-" .. rockspec_revision

-- GitHub source
local github_account_name = "fiware"
local github_repo_name = "kong-plugins-fiware"
source = {
  url = "git://github.com/"..github_account_name.."/"..github_repo_name..".git",
  dir = github_repo_name.."/"..package_name,
  tag = "0.5.5"
}

-- Description
description = {
  summary = "Access management for FIWARE Sidecar-Proxy auth endpoint config service using the SHARE framework",
  detailed = [[
  	   Manages access to the authorization endpoint configuration service required for the Sidecar-Proxy and
	   checks for corresponding access policies at authorisation registry.
	   Requires an EORI and key/certificate issued by an authority and registered at an
	   iSHARE Scheme Owner/Satellite.
	   Also requires an iSHARE-compliant authorisation registry for accessing the iSHARE policies.
  ]],
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name.."/"..package_name,
  license = "MIT",
}

dependencies = {
  'lua >= 5.1',
  'lua-fiware-lib >= 0.0.9-1'
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
