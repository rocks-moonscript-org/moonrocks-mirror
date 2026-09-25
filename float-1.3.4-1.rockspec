local git_ref = '1.3d'
local modrev = git_ref:gsub('[^0-9.]', '')
local _git_ref = git_ref.format('%d', git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. _git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'float'
version = modrev .. '-' .. specrev

description = {
  summary = [[Improved interface for floating objects]],
  detailed =
  [[Improves the interface for defining floating objects such as figures and tables. Introduces the boxed float, the ruled float and the plaintop float. You can define your own floats and improve the behaviour of the old ones.

  The package also provides the H float modifier option of the obsolete here package. You can select this as automatic default with \floatplacement{figure}{H}.]],
  labels = { 'Float' },
  homepage = 'https://ctan.org/pkg/float',
  license = 'LPPL-1.0'
}

build_dependencies = { 'luatex', 'latex-base' }

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/float.zip",
  dir = "float"
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/float.zip',
    dir = "float"
  }
end

build = {
  type = 'command',
  build_command = [[
    luatex --interaction=nonstopmode float.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/float/float.pdf'] = 'float.pdf',
      ['../tex/latex/float/float.sty'] = 'float.sty',
    }
  }
}
