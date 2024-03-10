local git_ref = '0.1.8'
local modrev = '0.1.8'
local specrev = '1'

local repo_url = 'https://github.com/luisiacc/gruvbox-baby'

rockspec_format = '3.0'
package = 'gruvbox-baby'
version = modrev ..'-'.. specrev

description = {
  summary = 'Gruvbox theme for neovim with full TreeSitter support.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/luisiacc/gruvbox-baby',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gruvbox-baby-' .. '0.1.8',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
