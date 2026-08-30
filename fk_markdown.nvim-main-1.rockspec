local git_ref = 'ac66465214300028d49f26ea16ddf78d38d7e81a'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/the-mayankjha/fk_markdown.nvim'

rockspec_format = '3.0'
package = 'fk_markdown.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A markdown utility plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/the-mayankjha/fk_markdown.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fk_markdown.nvim-' .. 'ac66465214300028d49f26ea16ddf78d38d7e81a',
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
