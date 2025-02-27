local git_ref = '0.0.7'
local modrev = '0.0.7'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/texrocks'

rockspec_format = '3.0'
package = 'texrocks'
version = modrev ..'-'.. specrev

description = {
  summary = 'A (La)TeX package manager powered by luarocks and luaTeX.',
  detailed = '',
  labels = { 'latex', 'lualatex', 'luatex', 'tex' } ,
  homepage = 'https://github.com/Freed-Wu/texrocks',
  license = 'GPL-3.0'
}

-- texlua contains a lfs
-- luafilesystem only for first running, see bin/texrocks
dependencies = { "argparse", "luarocks", "luafilesystem", "texlua" }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'texrocks-' .. '0.0.7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  install = {
    bin = { "bin/texrocks" }
  }
}
