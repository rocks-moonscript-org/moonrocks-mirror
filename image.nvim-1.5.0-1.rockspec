local git_ref = 'c75654b37cd13df17475a53d9dc3e3d1b5e09fa1'
local modrev = '1.5.0'
local specrev = '1'

local repo_url = 'https://github.com/3rd/image.nvim'

rockspec_format = '3.0'
package = 'image.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🖼️ Bringing images to Neovim.',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/3rd/image.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'magick' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'image.nvim-' .. 'c75654b37cd13df17475a53d9dc3e3d1b5e09fa1',
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
