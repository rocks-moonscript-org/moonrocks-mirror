local git_ref = '10bf607f11ed94151fb5496e6127d8823d162a7e'
local modrev = '9.2.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/neorg'

rockspec_format = '3.0'
package = 'neorg'
version = modrev ..'-'.. specrev

description = {
  summary = 'Modernity meets insane extensibility. The future of organizing your life in Neovim.',
  detailed = '',
  labels = { 'lua', 'neorg', 'neovim', 'neovim-plugin', 'nvim', 'org-mode', 'organization' } ,
  homepage = 'https://github.com/nvim-neorg/neorg',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-nio ~> 1.7', 'lua-utils.nvim == 1.0.2', 'plenary.nvim == 0.1.4', 'nui.nvim == 0.3.0', 'pathlib.nvim ~> 2.2' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-' .. '10bf607f11ed94151fb5496e6127d8823d162a7e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}
