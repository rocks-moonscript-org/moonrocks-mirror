local git_ref = '49acf0010ccc08d727582da8cbf5e4c3f3b0cc53'
local modrev = '1.3.0'
local specrev = '1'

local repo_url = 'https://github.com/kevinhwang91/nvim-ufo'

rockspec_format = '3.0'
package = 'nvim-ufo'
version = modrev ..'-'.. specrev

description = {
  summary = 'Not UFO in the sky, but an ultra fold in Neovim.',
  detailed = '',
  labels = { 'fold', 'lsp', 'lua', 'neovim', 'neovim-lua', 'neovim-plugin', 'nvim' } ,
  homepage = 'https://github.com/kevinhwang91/nvim-ufo',
  license = 'BSD-3-Clause'
}

dependencies = { 'lua >= 5.1', 'promise-async' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-ufo-' .. '49acf0010ccc08d727582da8cbf5e4c3f3b0cc53',
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
