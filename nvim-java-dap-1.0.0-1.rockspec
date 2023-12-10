local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-java/nvim-java-dap'

rockspec_format = '3.0'
package = 'nvim-java-dap'
version = modrev .. specrev

description = {
  summary = 'Provides APIs related to debugging Java',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/nvim-java/nvim-java-dap',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-java-dap-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
