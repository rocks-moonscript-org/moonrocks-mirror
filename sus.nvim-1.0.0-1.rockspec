local git_ref = 'v1.0.0'
local modrev = '1.0.0'
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
  dir = 'sus.nvim-' .. '1.0.0',
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
