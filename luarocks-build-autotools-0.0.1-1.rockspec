local git_ref = '0.0.1'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/luarocks-build-autotools'

rockspec_format = '3.0'
package = 'luarocks-build-autotools'
version = modrev ..'-'.. specrev

description = {
  summary = 'A luarocks build module for autotools',
  detailed = '',
  labels = { 'autotools', 'luarocks' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/luarocks-build-autotools',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'luarocks', 'luafilesystem' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'luarocks-build-autotools-' .. '0.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
