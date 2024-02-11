local package_name = "millheat"
local package_version = "0.4.0"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = package_name..".lua"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name.."/",
  branch = (package_version == "scm") and "master" or nil,
  tag = (package_version ~= "scm") and package_version or nil,
}

description = {
  summary = "Millheat API access for electrical heaters",
  detailed = [[
    Library to access the Millheat REST API.
  ]],
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.5",
  "luasec",
  "lua-cjson",
}

build = {
  type = "builtin",
  modules = {
    ["millheat.init"] = "src/millheat/init.lua",
    ["millheat.compat"] = "src/millheat/compat.lua",
  },
  copy_directories = {
    "docs",
 },
}
