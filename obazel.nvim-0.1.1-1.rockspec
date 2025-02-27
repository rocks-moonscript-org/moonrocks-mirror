local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/glindstedt/obazel.nvim'

rockspec_format = '3.0'
package = 'obazel.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'An overseer.nvim template provider for Bazel.',
  detailed = '',
  labels = { 'bazel', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/glindstedt/obazel.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'obazel.nvim-' .. '0.1.1',
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
