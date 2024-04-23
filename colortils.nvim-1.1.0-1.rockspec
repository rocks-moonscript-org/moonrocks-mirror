local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-colortils/colortils.nvim'

rockspec_format = '3.0'
package = 'colortils.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Some color utils for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-colortils/colortils.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colortils.nvim-' .. '1.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
