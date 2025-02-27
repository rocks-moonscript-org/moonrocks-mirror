local git_ref = 'v1.5.0'
local modrev = '1.5.0'
local specrev = '1'

local repo_url = 'https://github.com/ColinKennedy/nvim-best-practices-plugin-template'

rockspec_format = '3.0'
package = 'nvim-best-practices-plugin-template'
version = modrev ..'-'.. specrev

description = {
  summary = 'A no-nonsense template for making high-quality Neovim plugins. It has all the best opinions, pinky promise',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin', 'plugin-template' } ,
  homepage = 'https://github.com/ColinKennedy/nvim-best-practices-plugin-template',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-best-practices-plugin-template-' .. '1.5.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
