local git_ref = 'v1.1.2'
local modrev = '1.1.2'
local specrev = '1'

local repo_url = 'https://github.com/ColinKennedy/mega.logging'

rockspec_format = '3.0'
package = 'mega.logging'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim logger',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/ColinKennedy/mega.logging',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mega.logging-' .. '1.1.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
