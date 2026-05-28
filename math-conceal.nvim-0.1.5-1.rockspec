local git_ref = '0.1.5'
local modrev = '0.1.5'
local specrev = '1'

local repo_url = 'https://github.com/pxwg/math-conceal.nvim'

rockspec_format = '3.0'
package = 'math-conceal.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/pxwg/math-conceal.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = 'Faster, Stronger LaTeX and Typst conceal for neovim with the power of ❤️',
  detailed = '',
  labels = { 'math', 'tex', 'typst', 'neovim', },
  homepage = 'https://luarocks.org/modules/pxwg/math-conceal.nvim',
  license = 'MIT',
}

build_dependencies = {  }

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'math-conceal.nvim-' .. '0.1.5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = {'ftplugin'},
}
