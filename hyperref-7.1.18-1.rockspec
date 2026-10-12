local git_ref = 'release-7.01r'
local _git_ref = git_ref:gsub('.*%-', '')
local modrev = _git_ref:gsub('[^0-9.]', ''):gsub('0+(%d)', '%1')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'hyperref'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/latex3/hyperref'

description = {
  summary = 'Extensive support for hypertext in LaTeX',
  detailed =
  [[The hyperref package is used to handle cross-referencing commands in LaTeX to produce hypertext links in the document. The package provides backends for the \special set defined for HyperTeX DVI processors; for embedded pdfmark commands for processing by Acrobat Distiller (dvips and Y&Y’s dvipsone); for Y&Y’s dviwindo; for PDF control within pdfTeX and dvipdfm; for TeX4ht; and for VTeX’s pdf and HTML backends.

The package is distributed with the backref and nameref packages, which make use of the facilities of hyperref.

The package depends on the author’s kvoptions, ltxcmds and refcount packages.]],
  labels = { 'Form fillin', 'Adobe Distiller', 'e-TeX', 'PDF features', 'Hyper' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/hyperref.tds.zip',
    dir = '.'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'ntheorem', 'rerunfilecheck', 'refcount', 'gettitlestring', 'minitoc', 'atveryend', 'kvoptions', 'iftex',
  'pdfescape', 'hycolor', 'etoolbox', 'stringenc', 'intcalc', 'bitset', 'atbegshi', 'kvsetkeys', 'kvdefinekeys' }

build = {
  type = 'l3build',
}
