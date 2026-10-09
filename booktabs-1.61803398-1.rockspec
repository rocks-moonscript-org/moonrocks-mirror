local git_ref = '1.61803398'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/booktabs'

rockspec_format = '3.0'
package = 'booktabs'
version = modrev .. '-' .. specrev

description = {
  summary = [[Publication quality tables in LaTeX]],
  detailed =
  [[The package enhances the quality of tables in LaTeX, providing extra commands as well as behind-the-scenes optimisation. Guidelines are given as to what constitutes a good table in this context. From version 1.61, the package offers longtable compatibility.]],
  labels = { 'Table' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/booktabs.zip",
  dir = 'booktabs'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/required/booktabs.zip',
    dir = 'booktabs'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'command',
  build_command = [[
      luatex --interaction=nonstopmode booktabs.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/booktabs/booktabs.pdf'] = 'booktabs.pdf',
      ['../tex/latex/booktabs/booktabs.sty'] = 'booktabs.sty',
    }
  }
}
