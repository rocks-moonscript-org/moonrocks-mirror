local git_ref = 'b59233f209d334c3eaf07ca5d3f78dc36ead6c37'
local modrev = '0.0.0'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-neorocks/luarocks-tag-release'

rockspec_format = '3.0'
package = 'luarocks-tag-release'
version = modrev .. specrev

description = {
  summary = 'GitHub workflow for automatically generating Luarocks releases from tags',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/nvim-neorocks/luarocks-tag-release',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'luarocks-tag-release-' .. 'b59233f209d334c3eaf07ca5d3f78dc36ead6c37',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
