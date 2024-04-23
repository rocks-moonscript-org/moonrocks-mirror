local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/ThemerCorp/themer.lua'

rockspec_format = '3.0'
package = 'themer.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'A simple, minimal highlighter plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ThemerCorp/themer.lua',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'themer.lua-' .. '0.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc', 'plugin' } ,
}
