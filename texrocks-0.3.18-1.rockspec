local git_ref = '0.3.18'
local modrev = '0.3.18'
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

-- for luatex/lualatex/luatexinfo/initex
-- luahbtex versions of build/run time must be same
-- (Fatal format file error; I'm stymied)
-- so pin versions:
-- 1. luahbtex -> texrocks
-- 2. texrocks -> luatex/lualatex/luatexinfo/initex
dependencies = { "luahbtex == 1.27.0", "argparse", "lua-cjson", "prompt-style" }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'texrocks-' .. '0.3.18',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin'
}

test = {
   type = "busted",
}

deploy = {
  wrap_bin_scripts = false
}
