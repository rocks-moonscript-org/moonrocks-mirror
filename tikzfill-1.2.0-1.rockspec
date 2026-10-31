local git_ref = 'v1.2.0'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'tikzfill'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/T-F-S/tikzfill'

dependencies = { 'pgf' }

description = {
  summary = 'TikZ libraries for filling with images and patterns',
  detailed =
  [[This is a collection of TikZ libraries which add further options to fill TikZ paths with images and patterns. The libraries comprise fillings with images from files and from TikZ pictures. Also, patterns of hexagons and of rhombi are provided.]],
  labels = { 'PGF TikZ' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/tikzfill.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
