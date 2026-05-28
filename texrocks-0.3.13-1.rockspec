local git_ref = '0.3.13'
local modrev = '0.3.13'
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

dependencies = { }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'texrocks-' .. '0.3.13',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  install = {
    bin = { "bin/texlua" },
  }
}

test = {
   type = "busted",
}

deploy = {
  wrap_bin_scripts = false
}
