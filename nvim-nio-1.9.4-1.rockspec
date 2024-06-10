local git_ref = '7969e0a8ffabdf210edd7978ec954a47a737bbcc'
local modrev = '1.9.4'
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
  dir = 'nvim-nio-' .. '7969e0a8ffabdf210edd7978ec954a47a737bbcc',
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
