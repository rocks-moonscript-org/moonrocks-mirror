local git_ref = 'd7618e4e2f71c5ced82ec89698a3494816d614c7'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/dskart/nvim-claudehalp'

rockspec_format = '3.0'
package = 'nvim-claudehalp'
version = modrev ..'-'.. specrev

description = {
  summary = ':ClaudeHalp How can I xyz in vim :(',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/dskart/nvim-claudehalp',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-claudehalp-' .. 'd7618e4e2f71c5ced82ec89698a3494816d614c7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
