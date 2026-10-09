local git_ref = 'v1.9'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

local repo_url = 'https://github.com/alex-ball/beamerswitch'

rockspec_format = '3.0'
package = 'beamerswitch'
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
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '-' .. git_ref .. '.zip',
  dir = 'beamerswitch'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/required/beamerswitch.zip',
    dir = 'beamerswitch'
  }
end

dependencies = { 'xkeyval', 'etoolbox', 'xstring', 'latex-tools', 'iftex', 'l3kernel', 'beamer', 'hyperref', 'pgf', 'l3packages' }

build = {
  type = 'none',
  install = {
    conf = {
      ['../doc/latex/beamerswitch/beamerswitch.pdf'] = 'beamerswitch.pdf',
      ['../tex/latex/beamerswitch/beamerswitch.cls'] = 'beamerswitch.cls',
    }
  }
}
