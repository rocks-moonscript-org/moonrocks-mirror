local git_ref = 'v2.3.0'
local modrev = '2.3.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/zettelkasten.nvim'

rockspec_format = '3.0'
package = 'zettelkasten.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'a Zettelkasten note taking plugin',
  detailed = '',
  labels = { 'neovim-plugin', 'zettelkasten' } ,
  homepage = 'https://github.com/wsdjeg/zettelkasten.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zettelkasten.nvim-' .. '2.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftdetect', 'ftplugin', 'plugin', 'syntax' } ,
}
