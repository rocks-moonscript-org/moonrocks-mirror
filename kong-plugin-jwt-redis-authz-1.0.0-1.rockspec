local plugin_name = "jwt-redis-authz"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.0"
local rockspec_revision = "1"

local github_account_name = "erlanggamekari"
local github_repo_name = "kong-plugin-authz"

-- DEVIATION, FLAGGED: the existing `authz` plugin's rockspecs point
-- source.branch at a bare version number (e.g. "1.0.0", "1.0.1") because this
-- repo's actual (undocumented) convention is one long-lived git branch per
-- published version. That convention implicitly assumed one plugin per repo.
-- Branches `1.0.0` and `1.0.1` already exist in this repo FOR THE `authz`
-- PLUGIN -- pointing this rockspec at a bare "1.0.0" branch would silently
-- resolve to the authz plugin's release branch, which does not contain this
-- plugin's files at all. Namespacing the branch name with the plugin name
-- avoids that collision while keeping the same "one git branch per published
-- version" spirit. Whoever cuts the first release of this plugin must create
-- this branch (same manual step the existing plugin's release process
-- presumably already does) -- it does not exist yet as of this PR.
local git_checkout = package_version == "dev" and "master" or (plugin_name .. "-" .. package_version)


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://"..github_account_name.."@bitbucket.org/jurnal/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "Checks Redis existence (via jurnal-authz) for a JWT already signature-verified by Kong's bundled jwt plugin, and injects resolved identity headers for the upstream service",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "Apache 2.0",
}

dependencies = {
  "lua-cjson >= 2.1.0.10-1"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
