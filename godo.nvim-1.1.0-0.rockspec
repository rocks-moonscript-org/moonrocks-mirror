local git_ref = '26489595c6bcd3cc9f032f8bf469fe7ecd34a8f9'
local repo_url = 'https://github.com/arthuradolfo/godo.nvim'

rockspec_format = '3.0'
package = 'godo.nvim'
version = '1.1.0-0'

description = {
  summary = 'Neovim plugin to integrate godo tool.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/arthuradolfo/godo.nvim',
  license = 'MIT License'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'godo.nvim-' .. git_ref,
}

source = {
	url = repo_url:gsub('https', 'git')
}

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
