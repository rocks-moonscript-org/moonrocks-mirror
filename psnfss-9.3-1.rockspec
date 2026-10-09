local git_ref = '9.3'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/psnfss'

rockspec_format = '3.0'
package = 'psnfss'
version = modrev .. '-' .. specrev

description = {
  summary = [[Font support for common PostScript fonts]],
  detailed =
  [[Font definition files, macros and font metrics for freely-available Adobe Type 1 fonts. The font set consists of the "LaserWriter 35" set (originally "freely available" because embedded in PostScript printers), and a variety of other free fonts, together with some additions. Note that while many of the fonts are available in PostScript (and other) printers, most publishers require fonts embedded in documents, which requires that you have the fonts in your TeX system. Fortunately, there are free versions of the fonts from URW (available in the URW base5 bundle).

The base set of text fonts covered by PSNFSS are: AvantGarde, Bookman, Courier, Helvetica, New Century Schoolbook, Palatino, Symbol, Times Roman and Zapf Dingbats. In addition, the fonts Bitstream Charter and Adobe Utopia are covered (those fonts were contributed to the Public Domain by their commercial foundries).

Separate packages are provided to load each font for use as main text font. The packages helvet (which allows Helvetica to be loaded with its size scaled to something more nearly appropriate for its use as a Sans-Serif font to match Times) and pifont (which provides the means to select single glyphs from symbol fonts) are tailored to special requirements of their fonts.

Mathematics are covered by the mathptmx package, which constructs passable mathematics from a combination of Times Roman, Symbol and some glyphs from Computer Modern, and by Pazo Math (optionally extended with the fpl small-caps and old-style figures fonts) which uses Palatino as base font, with the mathpazo fonts.

The bundle as a whole is part of the LaTeX "required" set of packages.]],
  labels = { 'Font' },
  homepage = repo_url,
  license = 'LPPL-1.2'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/psnfss.zip",
  dir = 'psnfss'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/required/psnfss.zip',
    dir = 'psnfss'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'command',
  build_command = [[
      luatex --interaction=nonstopmode psfonts.ins
  ]],
  copy_directories = { 'tex', 'fonts', 'doc' },
  install = {
    conf = {
      ['../tex/latex/psnfss/times.sty'] = 'times.sty',
      ['../tex/latex/psnfss/palatino.sty'] = 'palatino.sty',
      ['../tex/latex/psnfss/courier.sty'] = 'courier.sty',
      ['../tex/latex/psnfss/helvet.sty'] = 'helvet.sty',
      ['../tex/latex/psnfss/avant.sty'] = 'avant.sty',
      ['../tex/latex/psnfss/newcent.sty'] = 'newcent.sty',
      ['../tex/latex/psnfss/bookman.sty'] = 'bookman.sty',
      ['../tex/latex/psnfss/chancery.sty'] = 'chancery.sty',
      ['../tex/latex/psnfss/pifont.sty'] = 'pifont.sty',
      ['../tex/latex/psnfss/mathpple.sty'] = 'mathpple.sty',
      ['../tex/latex/psnfss/mathptm.sty'] = 'mathptm.sty',
      ['../tex/latex/psnfss/mathptmx.sty'] = 'mathptmx.sty',
      ['../tex/latex/psnfss/charter.sty'] = 'charter.sty',
      ['../tex/latex/psnfss/utopia.sty'] = 'utopia.sty',
      ['../tex/latex/psnfss/mathpazo.sty'] = 'mathpazo.sty',
    }
  }
}
