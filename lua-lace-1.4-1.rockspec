local package_name = "lua-lace"
local package_version = "1.4"
local rockspec_revision = "1"
local github_account_name = "lunarmodules"
local github_repo_name = package_name


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = (package_version == "dev") and "master" or nil,
  tag = (package_version ~= "dev") and ("v" .. package_version) or nil,
}

description = {
   summary = "Lace is a simple access control engine modelled on Squid's acl syntax.",
   detailed = [[
      Lace is a simple access control engine modelled on Squid's acl syntax.
      It provides a parser of rulesets and an engine to execute the parsed
      rulesets. It relies on the calling application to provide access
      control types and then Lace runs the boolean logic and returns an
      allow/deny result along with the location of the decision and any
      description provided by it.]],
   homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
   license = "BSD 3-Clause"
}

build = {
   type = "builtin",
   modules = {
      lace = "lib/lace.lua",
      ["lace.builtin"] = "lib/lace/builtin.lua",
      ["lace.compiler"] = "lib/lace/compiler.lua",
      ["lace.engine"] = "lib/lace/engine.lua",
      ["lace.error"] = "lib/lace/error.lua",
      ["lace.lex"] = "lib/lace/lex.lua"
   },
}
