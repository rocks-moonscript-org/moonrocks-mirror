local git_ref = 'v0.4.0'
local modrev = '0.4.0'
local specrev = '1'

local repo_url = 'https://github.com/jnpngshiii/mindmap.nvim'

rockspec_format = '3.0'
package = 'mindmap.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/jnpngshiii/mindmap.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mindmap.nvim-' .. '0.4.0',
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
