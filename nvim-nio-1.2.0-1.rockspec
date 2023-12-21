local git_ref = '11864149f47e0c7a38c4dadbcea8fc17c968556e'
local modrev = '1.2.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/nvim-nio'

rockspec_format = '3.0'
package = 'nvim-nio'
version = modrev ..'-'.. specrev

description = {
  summary = 'A library for asynchronous IO in Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/nvim-neotest/nvim-nio',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-nio-' .. '11864149f47e0c7a38c4dadbcea8fc17c968556e',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
