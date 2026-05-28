local git_ref = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '1'

local repo_url = 'https://github.com/BirdeeHub/lua-osenv'

rockspec_format = '3.0'
package = 'osenv'
version = modrev ..'-'.. specrev

description = {
  summary = 'Manage lua process environment, vim.env polyfill with extra features',
  detailed = [[
os.getenv gets values from the process environment.
But how do you set them?
require('osenv').MY_VAR = "MY_VALUE"]],
  labels = { },
  homepage = 'https://github.com/BirdeeHub/lua-osenv',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-osenv-' .. '1.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "builtin",
  copy_directories = { },
  modules = { osenv = "osenv.c" }
}
