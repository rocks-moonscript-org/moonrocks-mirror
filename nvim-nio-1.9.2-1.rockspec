local git_ref = 'd8743224616f8107347ddebc77cdbf1e488bdee2'
local modrev = '1.9.2'
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
  dir = 'nvim-nio-' .. 'd8743224616f8107347ddebc77cdbf1e488bdee2',
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
