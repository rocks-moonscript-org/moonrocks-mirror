local git_ref = 'v2.2.2'
local modrev = '2.2.2'
local specrev = '1'

local repo_url = 'https://github.com/pysan3/pathlib.nvim'

rockspec_format = '3.0'
package = 'pathlib.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'OS Independent, ultimate solution to path handling in neovim.',
  detailed = [[
This plugin aims to decrease the difficulties of path management across mutliple OSs in neovim.
The plugin API is heavily inspired by Python's `pathlib.Path` with tweaks to fit neovim usage.
It is mainly used in neo-tree.nvim but it is so simple that you can use it in your own configs!]],
  labels = { 'neovim', 'nvim', 'pathlib', 'os' } ,
  homepage = 'https://pysan3.github.io/pathlib.nvim/',
  license = 'MPL-2.0'
}

dependencies = { 'lua >= 5.1', 'nvim-nio >= 1.8.0' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pathlib.nvim-' .. '2.2.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'doc' } ,
}
