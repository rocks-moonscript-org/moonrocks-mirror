local modrev = '0.1'
local specrev = '1'

rockspec_format = '3.0'
package = 'algorithms'
version = modrev .. '-' .. specrev

description = {
  summary = 'A suite of tools for typesetting algorithms in pseudo-code',
  detailed =
  [[Consists of two environments: algorithm and algorithmic. The algorithm package defines a floating algorithm environment designed to work with the algorithmic style. Within an algorithmic environment a number of commands for typesetting popular algorithmic constructs are available.]],
  labels = { 'Pseudo-code' },
  homepage = 'https://www.ctan.org/pkg/algorithms',
  license = 'LGPL-2.1'
}

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/algorithms.zip',
  dir = 'algorithms'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/algorithms.zip',
    dir = 'algorithms'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'float', 'latex-base' }

build = {
  type = 'command',
  build_command = [[
    luatex --interaction=nonstopmode algorithms.ins || true
  ]],
  install = {
    conf = {
      ['../doc/latex/algorithms/algorithms.pdf'] = 'algorithms.pdf',
      ['../tex/latex/algorithms/algorithm.sty'] = 'algorithm.sty',
      ['../tex/latex/algorithms/algorithmic.sty'] = 'algorithmic.sty',
    }
  }
}
