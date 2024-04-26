local git_ref = 'v1.5.1'
local modrev = '1.5.1'
local specrev = '1'

local repo_url = 'https://github.com/grapp-dev/nui-components.nvim'

rockspec_format = '3.0'
package = 'nui-components.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A feature-rich and highly customizable library for creating user interfaces in Neovim.',
  detailed = '',
  labels = { 'layout-engine', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'nvim-lua', 'nvim-plugin', 'ui', 'ui-components', 'user-interface' } ,
  homepage = 'https://nui-components.grapp.dev',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nui-components.nvim-' .. '1.5.1',
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
