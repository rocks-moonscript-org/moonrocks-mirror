local git_ref = '1.0'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://www.ctan.org/pkg/jknappen'

rockspec_format = '3.0'
package = 'jknappen'
version = modrev .. '-' .. specrev

description = {
  summary = 'Miscellaneous packages by Joerg Knappen',
  detailed =
  [[Miscellaneous macros by Jörg Knappen, including:

    represent counters in greek;
    Maxwell's non-commutative division;
    latin1jk, latin2jk and latin3jk, which are their inputenc definition files that allow verbatim input in the respective ISO Latin codes;
    blackboard bold fonts in maths;
    use of RSFS fonts in maths;
    extra alignments for \parboxes;
    swap Roman and Sans fonts;
    transliterate semitic languages;
    patches to make (La)TeX formulae embeddable in SGML;
    use maths "minus" in text as appropriate;
    simple Young tableaux.]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/jknappen.zip",
  dir = 'jknappen'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/jknappen.zip',
    dir = 'jknappen'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/jknapltx/greekctr.sty'] = 'greekctr.sty',
      ['../tex/latex/jknapltx/holtpolt.sty'] = 'holtpolt.sty',
      ['../tex/latex/jknapltx/latin1jk.def'] = 'latin1jk.def',
      ['../tex/latex/jknapltx/latin2jk.def'] = 'latin2jk.def',
      ['../tex/latex/jknapltx/latin3jk.def'] = 'latin3jk.def',
      ['../tex/latex/jknapltx/mathbbol.sty'] = 'mathbbol.sty',
      ['../tex/latex/jknapltx/mathrsfs.sty'] = 'mathrsfs.sty',
      ['../tex/latex/jknapltx/parboxx.sty'] = 'parboxx.sty',
      ['../tex/latex/jknapltx/sans.sty'] = 'sans.sty',
      ['../tex/latex/jknapltx/semtrans.sty'] = 'semtrans.sty',
      ['../tex/latex/jknapltx/sgmlcmpt.sty'] = 'sgmlcmpt.sty',
      ['../tex/latex/jknapltx/smartmn.sty'] = 'smartmn.sty',
      ['../tex/latex/jknapltx/tccompat.sty'] = 'tccompat.sty',
      ['../tex/latex/jknapltx/ubbold.fd'] = 'ubbold.fd',
      ['../tex/latex/jknapltx/ursfs.fd'] = 'ursfs.fd',
      ['../tex/latex/jknapltx/ustmary.fd'] = 'ustmary.fd',
      ['../tex/latex/jknapltx/young.sty'] = 'young.sty',
    }
  }
}
