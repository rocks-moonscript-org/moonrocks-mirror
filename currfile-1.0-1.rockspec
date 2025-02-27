local git_ref = 'v1.0'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = 'https://github.com/MartinScharrer/currfile'

rockspec_format = '3.0'
package = 'currfile'
version = modrev .. '-' .. specrev

build_dependencies = { 'lualatex', 'texrocks', 'latex-base' }

dependencies = { 'filehook', 'latex-graphics' }

description = {
  summary = [[Provide file name and path of input files]],
  detailed =
  [[The package provides macros holding file name information (directory, base name, extension, full name and full path) for files read by LaTeX \input and \include macros; it uses the file hooks provided by the author’s filehook. In particular, it restores the parent file name after the trailing \clearpage of an \included file; as a result, the macros may be usefully employed in the page header and footer of the last printed page of such a file.

  The depth of inclusion is made available, together with the “parent” (including file) and “parents” (all including files to the root of the tree).

  The package supersedes FiNK.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '.zip',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/currfile.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'command',
  build_command = [[
    texrocks install &&
      luatex --interaction=nonstopmode currfile.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/currfile/currfile.pdf'] = 'currfile.pdf',
      ['../tex/latex/currfile/currfile.sty'] = 'currfile.sty',
      ['../tex/latex/currfile/currfile-abspath.sty'] = 'currfile-abspath.sty',
    }
  }
}
