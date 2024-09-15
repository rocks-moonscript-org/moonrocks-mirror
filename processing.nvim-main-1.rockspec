local git_ref = 'bc6af427aa379dcf91f29cfbc409e242149ec2e8'
local modrev = 'main'
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
  dir = 'processing.nvim-' .. 'bc6af427aa379dcf91f29cfbc409e242149ec2e8',
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
