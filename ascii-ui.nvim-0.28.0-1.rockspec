local git_ref = '64fad7d719ae321f8ff20d86997720dc80cb76d6'
local modrev = '0.28.0'
local specrev = '1'

local repo_url = 'https://github.com/ascii-ui/ascii-ui.nvim'

rockspec_format = '3.0'
package = 'ascii-ui.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A WIP extensible ui framework with no non-sense apis (hopefully) for Neovim.',
  detailed = '',
  labels = { },
  homepage = 'https://ascii-ui.github.io/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ascii-ui.nvim-' .. '64fad7d719ae321f8ff20d86997720dc80cb76d6',
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
