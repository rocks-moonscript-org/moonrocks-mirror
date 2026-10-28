local git_ref = 'fd7499027472576c5d751575c02c37fc87c61db0'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/ustctug/texrocks'

rockspec_format = '3.0'
package = 'texrocks'
version = modrev ..'-'.. specrev

description = {
  summary = 'A minimal (La)TeX distribution powered by lux/luarocks and luaTeX.',
  detailed = '',
  labels = { 'latex', 'lualatex', 'luatex', 'tex', 'texinfo' } ,
  homepage = 'https://texrocks.readthedocs.io',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'luahbtex == 1.27.0', 'argparse', 'lua-cjson', 'prompt-style >= 0.1.3' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'texrocks-' .. 'fd7499027472576c5d751575c02c37fc87c61db0',
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

deploy = {
  wrap_bin_scripts = false
}
