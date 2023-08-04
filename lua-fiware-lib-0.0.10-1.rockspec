package = 'lua-fiware-lib'
version = '0.0.10-1'

local github_account_name = "fiware"
local github_repo_name = "lua-fiware-lib"
source = {
  url = "git://github.com/"..github_account_name.."/"..github_repo_name..".git",
  tag = "0.0.10"
}

description = {
  summary = 'Common FIWARE lua modules',
  detailed = [[
    This library provides several lua modules offering
    common functionalities required in FIWARE architectures
  ]],
  homepage = 'https://github.com/'..github_account_name..'/'..github_repo_name,
  license = 'MIT'
}

dependencies = {
  'lua >= 5.1',
  'lua-resty-openssl >= 0.8.1',
  "lua-resty-http == 0.16.1",
  "lua-resty-jwt == 0.2.3"
}

build = {
  type = 'builtin',
  modules = {
    ['fiware.ishare.ishare_helper'] = 'lib/fiware/ishare/ishare_helper.lua',
    ['fiware.ishare.ishare_handler'] = 'lib/fiware/ishare/ishare_handler.lua',
    ['fiware.ishare.sp_auth_endpoint_handler'] = 'lib/fiware/ishare/sp_auth_endpoint_handler.lua',
    ['fiware.ngsi.ngsi_helper'] = 'lib/fiware/ngsi/ngsi_helper.lua'
  }
}
