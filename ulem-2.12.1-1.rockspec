local git_ref = '2.12a'
local modrev = git_ref:gsub('[^0-9.]', ''):gsub('0+(%d)', '%1')
local __git_ref = git_ref.format('%d', git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://www.ctan.org/pkg/ulem'

rockspec_format = '3.0'
package = 'ulem'
version = modrev .. '-' .. specrev

description = {
  summary = 'Package for underlining',
  detailed =
  [[The package provides an \ul (underline) command which will break over line ends; this technique may be used to replace \em (both in that form and as the \emph command), so as to make output look as if it comes from a typewriter. The package also offers double and wavy underlining, and striking out (line through words) and crossing out (/// over words).

The package works with both Plain TeX and LaTeX.]],
  labels = { 'Underline', 'Emphasis' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/ulem.zip",
  dir = 'ulem'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/ulem.zip',
    dir = 'ulem'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../doc/latex/ulem/ulem.pdf'] = 'ulem.pdf',
      ['../tex/latex/ulem/ulem.sty'] = 'ulem.sty',
    }
  }
}
