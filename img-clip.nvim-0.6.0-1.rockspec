local git_ref = 'v0.6.0'
local modrev = '0.6.0'
local specrev = '1'

local repo_url = 'https://github.com/hakonharnes/img-clip.nvim'

rockspec_format = '3.0'
package = 'img-clip.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Effortlessly embed images into any markup language, like LaTeX, Markdown or Typst.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hakonharnes/img-clip.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'img-clip.nvim-' .. '0.6.0',
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
