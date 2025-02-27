local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/boltlessengineer/sense.nvim'

rockspec_format = '3.0'
package = 'sense.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Show diagnostics that are not visible in current view',
  detailed = [[
sense.nvim shows diagnostics that are not visible in current view with their distance.
Allows you to quickly navigate to off-screen diagnostics with relative-line-number motions.
Don't miss the diagnostics ever again!]],
  labels = { },
  homepage = 'https://github.com/boltlessengineer/sense.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'luautf8' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sense.nvim-' .. '1.0.1',
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
