local git_ref = '5.13'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/hyperxmp'

rockspec_format = '3.0'
package = 'hyperxmp'
version = modrev .. '-' .. specrev

description = {
  summary = [[Embed XMP metadata within a LaTeX document]],
  detailed =
  [[XMP (eXtensible Metadata Platform) is a mechanism proposed by Adobe for embedding document metadata within the document itself. The metadata is designed to be easy to extract, even by programs that are oblivious to the document's file format. Most of Adobe's applications store XMP metadata when saving files. Now, with the hyperxmp package, it is trivial for LaTeX document authors to store XMP metadata in their documents as well.

The package integrates seamlessly with hyperref and requires virtually no modifications to documents that already exploit hyperref's mechanisms for specifying PDF metadata. The current version of hyperxmp can embed the following metadata as XMP: title, authors, primary author's title or position, metadata writer, subject/summary, keywords, copyright, license URL, document base URL, document identifier and instance identifier, language, source file name, PDF generating tool, PDF version, and contact telephone number/postal address/email address/URL. Hyperxmp currently embeds XMP only within PDF documents; it is compatible with pdfLaTeX, XeLaTeX, LaTeX+dvipdfm, and LaTeX+dvips+ps2pdf.]],
  labels = { 'PDF features' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'lualatex', 'latex-base' }

dependencies = { 'atenddvi', 'latex-graphics', 'pdfescape', 'stringenc', 'intcalc', 'iftex', 'ifmtarg', 'etoolbox', 'latex-base', 'luacode', 'oberdiek', 'hyperref' }

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/hyperxmp.zip",
  dir = 'hyperxmp'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/generic/hyperxmp.zip',
    dir = 'hyperxmp'
  }
end

build = {
  type = 'command',
  build_command = [[
    luatex --interaction=nonstopmode hyperxmp.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/hyperxmp/hyperxmp.pdf'] = 'hyperxmp.pdf',
      ['../tex/latex/hyperxmp/hyperxmp.sty'] = 'hyperxmp.sty',
    }
  }
}
