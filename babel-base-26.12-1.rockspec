local git_ref = '26.12'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://github.com/latex3/babel'

rockspec_format = '3.0'
package = 'babel-base'
version = modrev .. '-' .. specrev

dependencies = { 'luatexbase', 'fontspec' }

description = {
  summary = 'Multilingual support for LaTeX, LuaLaTeX, XeLaTeX, and Plain TeX',
  detailed =
  [[This package manages culturally-determined typographical (and other) rules for a wide range of languages. A document may select a single language to be supported, or it may select several, in which case the document may switch from one language to another in a variety of ways.

Babel uses contributed configuration files that provide the detail of what has to be done for each language, as well as .ini files for about 300 languages from around the World, including many written in non-Latin and RTL scripts. Many of them work with pdfLaTeX, as well as with XeLaTeX and LuaLaTeX, out of the box. A few even work with plain formats.]],
  labels = { 'Defer stuff' },
  homepage = 'https://latex3.github.io/babel/',
  license = 'LPPL-1.3'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'babel-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/required/babel-base.tds.zip',
    dir = '.'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'l3build',
  patches = {
    ["fix-build.lua.diff"] = [[
--- old/build.lua
+++ new/build.lua
@@ -6,8 +6,8 @@
 bundle = ""
 module = "babel"

-installfiles = {"*.def", "*.ldf", "*.sty", "*.tex", "*.cfg" , "*.lua"}
-sourcefiles  = {"*.dtx", "*.ins"}
+installfiles = {"*.def", "*.ldf", "*.sty", "*.tex", "*.cfg" , "*.lua", "locale" }
+sourcefiles  = {"*.dtx", "*.ins", "*.lua", "locale" }
 typesetfiles = {"babel.dtx"}

 -- babel tests lots of third-party code
]],
  },
}
