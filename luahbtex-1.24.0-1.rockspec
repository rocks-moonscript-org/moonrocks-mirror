local git_ref = '1.24.0'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://gitlab.lisn.upsaclay.fr/texlive/luatex'

rockspec_format = '3.0'
package = 'luahbtex'
version = modrev .. '-' .. specrev

description = {
  summary = 'an extended version of pdfTeX using Lua as an embedded scripting language',
  detailed =
  [[The LuaTeX project's main objective is to provide an open and configurable variant of TeX while at the same time offering downward compatibility]],
  labels = { 'Engine' },
  homepage = 'https://www.luatex.org/',
  license = "GPL-2.0"
}

source = {
  url = repo_url .. '/-/archive/' .. git_ref .. '/luatex-' .. git_ref .. '.zip',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'command',
  build_command = [[CFLAGS=-std=gnu99 ./build.sh --nolua53 --luahb --parallel]],
  install = {
    bin = {
      luahbtex = 'build/texk/web2c/luahbtex'
    },
    conf = {
      ['../web2c/texmf.cnf'] = 'source/texk/kpathsea/texmf.cnf'
    }
  }
}
