local git_ref = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '1'

local repo_url = 'https://github.com/ColinKennedy/mega.cmdparse'

rockspec_format = '3.0'
package = 'mega.cmdparse'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim command-mode parser. Similar to Python\'s argparse module',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/ColinKennedy/mega.cmdparse',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mega.cmdparse-' .. '1.0.2',
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
