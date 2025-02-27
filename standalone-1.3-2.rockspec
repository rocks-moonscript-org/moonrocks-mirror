local git_ref = 'v1.3'
local modrev = git_ref:gsub('v', '')
local specrev = '2'

local repo_url = 'https://github.com/MartinScharrer/standalone'

rockspec_format = '3.0'
package = 'standalone'
version = modrev .. '-' .. specrev

dependencies = { 'latex-tools', 'iftex', 'xkeyval', 'currfile', 'varwidth',
  'gincltex', 'filemod', 'multido', 'luatex85', 'pdftexcmds',
  'preview' }

description = {
  summary = [[Compile TeX pictures stand-alone or as part of a document]],
  detailed =
  [[A class and package is provided which allows TeX pictures or other TeX code to be compiled standalone or as part of a main document. Special support for pictures with beamer overlays is also provided.

  The package is used in the main document and skips extra preambles in sub-files. The class may be used to simplify the preamble in sub-files. By default the preview package is used to display the typeset code without margins.

  The behaviour in standalone mode may adjusted using a configuration file standalone.cfg to redefine the standalone environment.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. version.char(specrev + 0x60) .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/standalone.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
