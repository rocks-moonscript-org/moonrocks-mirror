local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/sophieforrest/processing.nvim'

rockspec_format = '3.0'
package = 'processing.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Processing integration with Neovim. [maintainer=@sophieforrest, @piperinnshall]',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin' } ,
  homepage = 'https://github.com/sophieforrest/processing.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-java' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'processing.nvim-' .. '1.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'ftdetect' } ,
}
