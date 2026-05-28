local git_ref = '1f14d72aad7165eac307a2a2f6be0fb97a04b3c2'
local modrev = '9.6.4'
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

dependencies = { 'lua >= 5.1', 'nvim-nio ~> 1.7', 'lua-utils.nvim == 1.0.2', 'nui.nvim == 0.3.0', 'pathlib.nvim ~> 2.2', 'tree-sitter-norg == 0.2.6', 'tree-sitter-norg-meta == 0.1.0' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-' .. '1f14d72aad7165eac307a2a2f6be0fb97a04b3c2',
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
