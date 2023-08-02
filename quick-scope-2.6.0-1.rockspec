local git_ref = 'v2.6.0'
local modrev = '2.6.0'
local specrev = '-1'

local repo_url = 'https://github.com/unblevable/quick-scope'

rockspec_format = '3.0'
package = 'quick-scope'
version = modrev .. specrev

description = {
  summary = 'Lightning fast left-right movement in Vim',
  detailed = [[
    An always-on highlight for a unique character in every word on a line to help you use f, F and family.  
]],
  labels = { 'vim', 'vim-plugin' } ,
  homepage = 'https://github.com/unblevable/quick-scope',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'quick-scope-' .. '2.6.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
