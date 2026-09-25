local git_ref = 'v1.12d'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/josephwright/translator'

rockspec_format = '3.0'
package = 'translator'
version = modrev .. '-' .. specrev

description = {
  summary = [[Easy translation of strings in LaTeX]],
  detailed =
  [[This LaTeX package provides a flexible mechanism for translating individual words into different languages. For example, it can be used to translate a word like “figure” into, say, the German word “Abbildung”. Such a translation mechanism is useful when the author of some package would like to localize the package such that texts are correctly translated into the language preferred by the user.

  This package is not intended to be used to automatically translate more than a few words.]],
  labels = { 'Multi-lingual', 'Package support' },
  homepage = repo_url,
  license = 'GPL'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'latex-graphics' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. _git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/translator.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'l3build',
}
