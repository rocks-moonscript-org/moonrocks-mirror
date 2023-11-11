local git_tag = '0.7.0'
local modrev = '0.7.0'
local specrev = '-1'

local repo_url = 'https://github.com/mfussenegger/nvim-dap'

rockspec_format = '3.0'
package = 'nvim-dap'
version = modrev .. specrev

description = {
  summary = 'Debug Adapter Protocol client implementation for Neovim',
  detailed = [[
    nvim-dap allows you to:
    * Launch an application to debug
    * Attach to running applications and debug them
    * Set breakpoints and step through code
    * Inspect the state of the application  
]],
  labels = { 'debug-adapter-protocol', 'debugger', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/mfussenegger/nvim-dap',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_tag .. '.zip',
  dir = 'nvim-dap-' .. modrev,
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
