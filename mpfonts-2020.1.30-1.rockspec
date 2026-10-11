local git_ref = '2020.1.30'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/mpfonts'

rockspec_format = '3.0'
package = 'mpfonts'
version = modrev .. '-' .. specrev

description = {
  summary = 'Computer Modern Type 3 fonts converted using METAPOST',
  detailed =
  [[The Computer Modern fonts are available in Type 1 format, but these renditions are somewhat thin and spindly, and produce much lighter results than the originals. It is alternatively possible to use METAFONT bitmaps, but this has its disadvantages in comparison with vector fonts.

  These fonts are conversions to Type 3 fonts, done entirely in METAPOST; they are vector fonts which are a direct conversion from the original METAFONT files, so they are the design most authentic to the originals.

  However, these fonts, because they are PostScript Type 3 fonts, are not suitable for on-screen reading, and should probably only be used for printing.

  Note: do NOT add the map file to updmap!]],
  labels = { 'Monospaced Font', 'CM Font', 'Font symbol maths', 'Font serif', 'Sans Font', 'Proportional Font', 'Body Font', 'Maths Font', 'Font' },
  homepage = 'https://ctan.org/pkg/mpfonts',
  license = 'Knuth'
}

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/' .. package .. '.zip',
  dir = package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/fonts/mpfonts.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
    install -d fonts
    mv map type3 fonts
  ]],
  copy_directories = { 'fonts' }
}
