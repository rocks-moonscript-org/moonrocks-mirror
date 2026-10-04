local modrev = '1.3'
local specrev = '1'

rockspec_format = '3.0'
package = 'subfig'
version = modrev .. '-' .. specrev

description = {
  summary = 'Figures broken into subfigures',
  detailed =
  [[The package provides support for the manipulation and reference of small or "sub" figures and tables within a single figure or table environment. It is convenient to use this package when your subfigures are to be separately captioned, referenced, or are to be included in the List-of-Figures. A new \subfigure command is introduced which can be used inside a figure environment for each subfigure. An optional first argument is used as the caption for that subfigure.

This package supersedes the subfigure package (which is no longer maintained). The name was changed since the package is not completely backward compatible with the older package The major advantage of the new package is that the user interface is keyword/value driven and easier to use. To ease the transition from the subfigure package, the distribution includes a configuration file (subfig.cfg) which nearly emulates the subfigure package.

The functionality of the package is provided by the (more recent still) subcaption package.]],
  labels = { 'Subfloat', 'Caption' },
  homepage = 'https://github.com/bidi-tex/subfig',
  license = 'LPPL-1.3c'
}

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/subfig.zip',
  dir = 'subfig'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/subfig.zip',
    dir = 'subfig'
  }
end

build_dependencies = { 'lualatex', 'latex-base' }

dependencies = { 'latex-base' }

build = {
  type = 'command',
  build_command = [[
    lualatex --interaction=nonstopmode subfig.ins || true
  ]],
  install = {
    conf = {
      ['../doc/latex/subfig/subfig.pdf'] = 'subfig.pdf',
      ['../tex/latex/subfig/subfig.sty'] = 'subfig.sty',
      ['../tex/latex/subfig/altsf.cfg'] = 'altsf.cfg',
    }
  }
}
