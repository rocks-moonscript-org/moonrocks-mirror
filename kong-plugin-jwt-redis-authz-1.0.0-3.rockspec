local plugin_name = "jwt-redis-authz"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.0"
local rockspec_revision = "3"

local git_repo_path = "jurnal/kong-plugin-authz"

-- DEVIATION, FLAGGED: the existing `authz` plugin's rockspecs point
-- source.branch at a bare version number (e.g. "1.0.0", "1.0.1") because this
-- repo's actual (undocumented) convention is one long-lived git branch per
-- published version. That convention implicitly assumed one plugin per repo.
-- Branches `1.0.0` and `1.0.1` already exist in this repo FOR THE `authz`
-- PLUGIN -- pointing this rockspec at a bare "1.0.0" branch would silently
-- resolve to the authz plugin's release branch, which does not contain this
-- plugin's files at all. Namespacing the branch name with the plugin name
-- avoids that collision while keeping the same "one git branch per published
-- version" spirit. Whoever cuts a release must push this branch before
-- running `luarocks pack` -- pack clones source.url at source.branch.
local git_checkout = package_version == "dev" and "master" or (plugin_name .. "-" .. package_version)

-- DEVIATION, FLAGGED: revision -1 used git+https with a personal account name
-- embedded in the host part. That form (a) names an individual in a published
-- artifact and (b) requires an interactive password, which is why the kaniko
-- image build could not clone it. SSH is used instead; the published artifact
-- for this revision is a self-contained .src.rock, so consumers never resolve
-- this URL at install time.
package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+ssh://git@bitbucket.org/"..git_repo_path..".git",
  branch = git_checkout,
}


description = {
  summary = "Checks Redis existence (via jurnal-authz) for a JWT already signature-verified by Kong's bundled jwt plugin, and injects resolved identity headers for the upstream service",
  homepage = "https://bitbucket.org/"..git_repo_path,
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
