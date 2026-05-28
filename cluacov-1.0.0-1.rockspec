local package_name = "cluacov"
local package_version = "1.0.0"
local rockspec_revision = "1"
local github_account_name = "lunarmodules"
local github_repo_name = "cluacov"


rockspec_format = "3.0"
package = package_name
version = package_version.."-"..rockspec_revision

source = {
   url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
   branch = (package_version == "dev") and "master" or nil,
   tag = (package_version ~= "dev") and package_version or nil,
}

description = {
   summary = "C extensions for LuaCov",
   detailed = [[
      Optional C extensions for LuaCov, improving performance and reducing
      number of lines incorrectly marked as missed. Depends on LuaCov.
   ]],
   homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
   "luacov >= 0.13.0"
}

build = {
   type = "builtin",
   modules = {
      ["cluacov.deepactivelines"] = "src/cluacov/deepactivelines.c",
      ["cluacov.hook"] = "src/cluacov/hook.c",
      ["cluacov.version"] = "src/cluacov/version.lua"
   }
}

test = {
   type = "busted"
}
