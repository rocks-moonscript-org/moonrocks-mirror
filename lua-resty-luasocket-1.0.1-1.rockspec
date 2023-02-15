local package_name = "lua-resty-luasocket"
local package_version = "1.0.1"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = "lua-resty-luasocket"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = (package_version == "dev") and "master" or nil,
  tag = (package_version ~= "dev") and ("v" .. package_version) or nil,
}

description = {
  summary = "Graceful fallback to LuaSocket for ngx_lua",
  license = "MIT",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
}

build = {
  type = "builtin",
  modules = {
    ["resty.luasocket.init"] = "lib/resty/luasocket/init.lua",
    ["resty.luasocket.http"] = "lib/resty/luasocket/http.lua",
  },
  copy_directories = {
    "docs",
  },
}
