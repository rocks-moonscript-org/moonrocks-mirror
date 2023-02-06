local git_tag = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-neorocks/luarocks-tag-release'

rockspec_format = '3.0'
package = 'luarocks-tag-release'
version = modrev .. specrev

description = {
  summary = 'Luarocks release workflow for GitHub',
  detailed = [[
    This is not a real lua package.
    It exists for the purpose of testing the workflow.  
]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/luarocks-tag-release',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'telescope.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_tag .. '.zip',
  dir = 'luarocks-tag-release-' .. modrev,
}

if modrev == 'scm' then
  source = {
    url = repo_url,
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
