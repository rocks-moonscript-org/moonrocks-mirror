local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/horriblename/lzn-auto-require'

rockspec_format = '3.0'
package = 'lzn-auto-require'
version = modrev ..'-'.. specrev

description = {
  summary = 'Auto load optional plugins via lua modules with lz.n',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/horriblename/lzn-auto-require',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1', 'lz.n ~> 2' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lzn-auto-require-' .. '0.1.0',
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
