local git_ref = 'v4.0.2'
local modrev = '4.0.2'
local specrev = '1'

local repo_url = 'https://github.com/lukas-reineke/headlines.nvim'

rockspec_format = '3.0'
package = 'headlines.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'This plugin adds horizontal highlights for text filetypes, like markdown, orgmode, and neorg.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/lukas-reineke/headlines.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'headlines.nvim-' .. '4.0.2',
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
