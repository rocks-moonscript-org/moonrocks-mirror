local git_ref = '50e8df7a486cadd2625efc3210d12b0b3fcc23a0'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/TarunDaCoder/sus.nvim'

rockspec_format = '3.0'
package = 'sus.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Adds the sus emoji on lines when it finds the words "sus" in them',
  detailed = '',
  labels = { 'among-us', 'lua', 'meme-plugin', 'neovim', 'nvim', 'nvim-plugin', 'plugin', 'sus' } ,
  homepage = 'https://github.com/TarunDaCoder/sus.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sus.nvim-' .. '50e8df7a486cadd2625efc3210d12b0b3fcc23a0',
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
