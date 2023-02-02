local package_name = "lua-resty-azure"
local package_version = "1.1.0"
local rockspec_revision = "1"
local github_account_name = "Kong"
local github_repo_name = "lua-resty-azure"
local git_checkout = package_version == "dev" and "main" or package_version

package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout
}

description = {
  summary = "Azure SDK for OpenResty",
  detailed = [[
    Azure SDK for Lua resty framework.
  ]],
  license = "Apache 2.0",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name.."/topics/README.md.html"
}

dependencies = {
  "lua-resty-http >= 0.16",
  "lua-cjson >= 2.1.0",
}

build = {
  type = "builtin",
  modules = {
    ["resty.azure.init"]                                   = "resty/azure/init.lua",
    ["resty.azure.config"]                                 = "resty/azure/config.lua",
    ["resty.azure.request.http.http"]                      = "resty/azure/request/http/http.lua",
    ["resty.azure.request.http.socket"]                    = "resty/azure/request/http/socket.lua",
    ["resty.azure.credentials.Credentials"]                = "resty/azure/credentials/Credentials.lua",
    ["resty.azure.credentials.ClientCredentials"]          = "resty/azure/credentials/ClientCredentials.lua",
    ["resty.azure.credentials.PodIdentityCredentials"]     = "resty/azure/credentials/PodIdentityCredentials.lua",
    ["resty.azure.credentials.ManagedIdentityCredentials"] = "resty/azure/credentials/ManagedIdentityCredentials.lua",
    ["resty.azure.api.keyvault"]                           = "resty/azure/api/keyvault.lua",
  }
}
