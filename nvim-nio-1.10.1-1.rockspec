local git_ref = '21f5324bfac14e22ba26553caf69ec76ae8a7662'
local modrev = '1.10.1'
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

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-nio-' .. '21f5324bfac14e22ba26553caf69ec76ae8a7662',
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
