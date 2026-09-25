local git_ref = 'v7.0b'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/frankmittelbach/fmitex-footmisc'

rockspec_format = '3.0'
package = 'footmisc'
version = modrev .. '-' .. specrev

description = {
  summary = [[A range of footnote options]],
  detailed =
  [[A collection of ways to change the typesetting of footnotes. The package provides means of changing the layout of the footnotes themselves (including setting them in ‘paragraphs’ — the para option), a way to number footnotes per page (the perpage option), to make footnotes disappear in a ‘moving’ argument (stable option) and to deal with multiple references to footnotes from the same place (multiple option). The package also has a range of techniques for labelling footnotes with symbols rather than numbers.

  Some of the functions of the package are overlap with the functionality of other packages. The para option is also provided by the manyfoot and bigfoot packages, though those are both also portmanteau packages. (Don’t be seduced by fnpara, whose implementation is improved by the present package.) The perpage option is also offered by footnpag and by the rather more general-purpose perpage]],
  labels = { 'Footnote' },
  homepage = repo_url,
  license = 'GPL-2.0'
}

build_dependencies = { 'lualatex', 'latex-base' }

dependencies = { 'bigfoot' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fmitex-footmisc-' .. _git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/footmisc.zip',
  }
end

build = {
  type = 'l3build',
}
