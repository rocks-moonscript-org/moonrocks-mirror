local git_ref = '2022-09-23'
local modrev = git_ref:gsub('-0', '-'):gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/graphics-def'

rockspec_format = '3.0'
package = 'graphics-def'
version = modrev .. '-' .. specrev

dependencies = { 'epstopdf-pkg' }

description = {
  summary = 'Colour and graphics option files',
  detailed =
  [[This bundle is a combined distribution consisting of dvips.def, pdftex.def, luatex.def, xetex.def, dvipdfmx.def, and dvisvgm.def driver option files for the LaTeX graphics and color packages.

  It is hoped that by combining their source repositories at https://github.com/latex3/graphics-def it will be easier to coordinate updates.]],
  labels = { 'Graphics driver' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'luatex', 'latex-base' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/graphics-def.zip',
  }
end

build = {
  type = 'l3build',
}
