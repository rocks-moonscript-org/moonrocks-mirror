local git_ref = 'bebd98bdf1ab7b88620ed1948e53f1856b138d74'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/chat.nvim'

rockspec_format = '3.0'
package = 'chat.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/wsdjeg/chat.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'chat.nvim-' .. 'bebd98bdf1ab7b88620ed1948e53f1856b138d74',
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
