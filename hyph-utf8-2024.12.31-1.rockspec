local git_ref = 'CTAN-2024.12.31'
local modrev = git_ref:gsub('.*%-', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'hyph-utf8'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/hyphenation/tex-hyphen'

description = {
  summary = 'Hyphenation patterns expressed in UTF-8',
  detailed =
  [[Modern native UTF-8 engines such as XeTeX and LuaTeX need hyphenation patterns in UTF-8 format, whereas older systems require hyphenation patterns in the 8-bit encoding of the font in use (such encodings are codified in the LaTeX scheme with names like OT1, T2A, TS1, OML, LY1, etc).

The present package offers a collection of conversions of existing patterns to UTF-8 format, together with converters for use with 8-bit fonts in older systems. Since hyphenation patterns for Knuthian-style TeX systems are only read at iniTeX time, it is hoped that the UTF-8 patterns, with their converters, will completely supplant the older patterns.]],
  labels = { 'Hyphenation' },
  homepage = repo_url,
  license = 'MIT'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tex-hyphen-' .. git_ref .. '/hyph-utf8',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/hyph-utf8.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'tds',
  copy_directories = { 'doc', 'tex' },
}
