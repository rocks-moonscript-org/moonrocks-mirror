local git_ref = 'debian/7.2-4'
local _git_ref = git_ref:gsub("[^/]+/", "")
local modrev = _git_ref:gsub("%-.*", "")
local specrev = _git_ref:gsub(".*%-", "")
_git_ref = git_ref:gsub("/", "-")

local repo_url = 'https://github.com/debian-tex/texinfo'

rockspec_format = '3.0'
package = 'texinfo'
version = modrev .. '-' .. specrev

description = {
  summary = 'Texinfo documentation system',
  detailed =
  [[Texinfo is the preferred format for documentation in the GNU project; the format may be used to produce online or printed output from a single source.

  The Texinfo macros may be used to produce printable output using TeX; other programs in the distribution offer online interactive use (with hypertext linkages in some cases).

  The latest release of the texinfo.tex macros and texi2dvi script may be found in the texinfo-latest package, which are usually newer than the last full release.]],
  labels = { 'Documentation support', 'Format' },
  homepage = 'https://www.gnu.org/software/texinfo/',
  license = 'GPL-3.0'
}

build_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'texinfo-' .. _git_ref ..  '/doc'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/texinfo/texinfo.zip',
    dir = 'texinfo'
  }
end

build = {
  type = 'none',
   patches = {
      ['fix-texinfo-dump.diff'] = [[
--- old/texinfo.tex
+++ new/texinfo.tex
@@ -1016,7 +1016,7 @@
   \endgroup
   \def\pdfescapestrutfsixteen#1{\directlua{UTF16oct('\luaescapestring{#1}')}}
   % Escape PDF strings without converting
-  \begingroup
+  \def\pdfescapestring#1{
     \directlua{
       function PDFescstr(str)
         for c in string.bytes(str) do
@@ -1029,13 +1029,13 @@
           end
         end
       end
+      PDFescstr('\luaescapestring{#1}')
     }
     % The -2 in the arguments here gives all the input to TeX catcode 12 
     % (other) or 10 (space), preventing undefined control sequence errors. See 
     % https://lists.gnu.org/archive/html/bug-texinfo/2019-08/msg00031.html
     %
-  \endgroup
-  \def\pdfescapestring#1{\directlua{PDFescstr('\luaescapestring{#1}')}}
+  }
   \ifnum\luatexversion>84
     % For LuaTeX >= 0.85
     \def\pdfdest{\pdfextension dest}
]],
   },
  install = {
    conf = {
      ['../tex/generic/epsf/epsf.tex'] = 'epsf.tex',
      ['../tex/texinfo/texinfo.tex'] = 'texinfo.tex',
      ['../tex/texinfo/texinfo-ja.tex'] = 'texinfo-ja.tex',
      ['../tex/texinfo/texinfo-zh.tex'] = 'texinfo-zh.tex',
      ['../tex/texinfo/txi-ca.tex'] = 'txi-ca.tex',
      ['../tex/texinfo/txi-cs.tex'] = 'txi-cs.tex',
      ['../tex/texinfo/txi-de.tex'] = 'txi-de.tex',
      ['../tex/texinfo/txi-en.tex'] = 'txi-en.tex',
      ['../tex/texinfo/txi-es.tex'] = 'txi-es.tex',
      ['../tex/texinfo/txi-fi.tex'] = 'txi-fi.tex',
      ['../tex/texinfo/txi-fr.tex'] = 'txi-fr.tex',
      ['../tex/texinfo/txi-hu.tex'] = 'txi-hu.tex',
      ['../tex/texinfo/txi-is.tex'] = 'txi-is.tex',
      ['../tex/texinfo/txi-it.tex'] = 'txi-it.tex',
      ['../tex/texinfo/txi-ja.tex'] = 'txi-ja.tex',
      ['../tex/texinfo/txi-nb.tex'] = 'txi-nb.tex',
      ['../tex/texinfo/txi-nl.tex'] = 'txi-nl.tex',
      ['../tex/texinfo/txi-nn.tex'] = 'txi-nn.tex',
      ['../tex/texinfo/txi-pl.tex'] = 'txi-pl.tex',
      ['../tex/texinfo/txi-pt.tex'] = 'txi-pt.tex',
      ['../tex/texinfo/txi-ru.tex'] = 'txi-ru.tex',
      ['../tex/texinfo/txi-sr.tex'] = 'txi-sr.tex',
      ['../tex/texinfo/txi-tr.tex'] = 'txi-tr.tex',
      ['../tex/texinfo/txi-uk.tex'] = 'txi-uk.tex',
      ['../tex/texinfo/txi-zh.tex'] = 'txi-zh.tex',
    }
  }
}
