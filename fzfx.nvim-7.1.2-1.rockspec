local git_ref = 'fa723eff08f0604f637ad7b79d59dab71e975c0a'
local modrev = '7.1.2'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/fzfx.nvim'

rockspec_format = '3.0'
package = 'fzfx.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim fuzzy finder that updates on every keystroke.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://linrongbin16.github.io/fzfx.nvim/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzfx.nvim-' .. 'fa723eff08f0604f637ad7b79d59dab71e975c0a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'bin', 'docs', 'spec' } ,
}
