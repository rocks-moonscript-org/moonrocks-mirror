local git_ref = '16d618df93a49f5bfc22c49cd67bc867ada818ec'
local modrev = '8.1.1'
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
  dir = 'fzfx.nvim-' .. '16d618df93a49f5bfc22c49cd67bc867ada818ec',
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
