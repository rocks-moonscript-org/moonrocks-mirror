local git_ref = '1.8b'
local modrev = git_ref:gsub('[^0-9.]', '')
local specrev = git_ref.format('%d', git_ref:gsub('[0-9.]', ''):byte() - 0x60)

rockspec_format = '3.0'
package = 'ieeetran'
version = modrev .. '-' .. specrev

description = {
  summary = 'Document class for IEEE Transactions journals and conferences',
  detailed =
  [[The class and its BibTeX style enable authors to produce officially-correct output for the Institute of Electrical and Electronics Engineers (IEEE) transactions, journals and conferences.]],
  labels = { 'Class', 'Journal' },
  homepage = 'http://www.ieee.org/publications_standards/publications/authors/author_templates.html',
  license = 'LPPL-1.3c'
}

source = {
  url = 'https://mirrors.ctan.org/macros/latex/contrib/IEEEtran.zip',
  dir = 'IEEEtran'
}

dependencies = {}

build = {
  type = 'none',
  install = {
    conf = {
      -- ['../doc/latex/ieeetran/IEEEtran_HOWTO.pdf'] = 'IEEEtran_HOWTO.pdf',
      ['../tex/latex/ieeetran/IEEEtran.cls'] = 'IEEEtran.cls',
    }
  }
}
