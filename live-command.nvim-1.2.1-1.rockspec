local git_ref = '1.2.1'
local modrev = '1.2.1'
local specrev = '1'

local repo_url = 'https://github.com/smjonas/live-command.nvim'

rockspec_format = '3.0'
package = 'live-command.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Easily create previewable commands in Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/smjonas/live-command.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'live-command.nvim-' .. '1.2.1',
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
