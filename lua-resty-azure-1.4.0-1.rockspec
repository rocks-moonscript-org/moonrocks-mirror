local package_name = "lua-resty-azure"
local package_version = "1.4.0"
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
  "lua-resty-luasocket ~> 1",
}

build = {
  type = "builtin",
  modules = {
    ["resty.azure.init"]                                        = "resty/azure/init.lua",
    ["resty.azure.config"]                                      = "resty/azure/config.lua",
    ["resty.azure.utils"]                                       = "resty/azure/utils/init.lua",
    ["resty.azure.credentials.Credentials"]                     = "resty/azure/credentials/Credentials.lua",
    ["resty.azure.credentials.ClientCredentials"]               = "resty/azure/credentials/ClientCredentials.lua",
    ["resty.azure.credentials.WorkloadIdentityCredentials"]     = "resty/azure/credentials/WorkloadIdentityCredentials.lua",
    ["resty.azure.credentials.ManagedIdentityCredentials"]      = "resty/azure/credentials/ManagedIdentityCredentials.lua",
    ["resty.azure.api.keyvault"]                                = "resty/azure/api/keyvault.lua",
    ["resty.azure.api.secrets"]                                 = "resty/azure/api/secrets.lua",
    ["resty.azure.api.keys"]                                    = "resty/azure/api/keys.lua",
    ["resty.azure.api.certificates"]                            = "resty/azure/api/certificates.lua",
    ["resty.azure.api.auth"]                                    = "resty/azure/api/auth/init.lua",
    ["resty.azure.api.request.build"]                           = "resty/azure/api/request/build.lua",
    ["resty.azure.api.request.execute"]                         = "resty/azure/api/request/execute.lua",
    ["resty.azure.api.response.handle"]                         = "resty/azure/api/response/handle.lua",
  }
}
