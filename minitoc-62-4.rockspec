local git_ref = 'release-v62'
local modrev = git_ref:gsub("^release%-v", "")
local specrev = '4'

rockspec_format = '3.0'
package = 'minitoc'
version = modrev .. '-' .. specrev

description = {
  summary = [[Produce a table of contents for each chapter, part or section]],
  detailed =
  [[The minitoc package allows you to add mini-tables-of-contents (minitocs) at the beginning of every chapter, part or section. There is also provision for mini-lists of figures and of tables. At the part level, they are parttocs, partlofs and partlots. If the type of document does not use chapters, the basic provision is section level secttocs, sectlofs and sectlots.

  The package has provision for language-specific configuration of its own “fixed names”, using .mld files (analogous to babel .ldf files that do that job for LaTeX”s own fixed names).]],
  labels = { 'TOC etc.' },
  homepage = 'https://github.com/LaTeX-Package-Repositories/minitoc',
  license = 'LPPL-1.3c'
}

dependencies = { 'latex-base', 'notoccite', 'placeins' }

-- lualatex only support utf-8 encoding
source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/minitoc.tds.zip",
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/minitoc.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
