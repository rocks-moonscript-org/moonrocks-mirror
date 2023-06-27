local package_name = "copas-async"
local package_version = "1.0.0"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = "copas-async"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
   url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
   branch = (package_version == "scm") and "master" or nil,
   tag = (package_version ~= "scm") and ("v"..package_version) or nil,
}

description = {
   summary = "Copas add-on to provide true asynchronus threads",
   detailed = [[
      Copas-friendly true asynchronous threads, powered by Lua Lanes.
   ]],
   license = "MIT",
   homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
}

dependencies = {
   "lua >= 5.1",
   "lanes >= 3.10.0",
   "copas >= 2.0.2",
}

build = {
   type = "builtin",

   modules = {
      ["copas.async"] = "src/copas/async.lua",
   },

   copy_directories = {
      "docs",
   },
}

