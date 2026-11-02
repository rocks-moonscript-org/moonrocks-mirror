local git_ref = 'v3.2.0'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'sjtubeamer-contrib'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/sjtug/SJTUBeamer'

description = {
  summary = 'plugin for sjtubeamer',
  labels = { 'beamer', 'beamer-template', 'latex', 'latex-template', 'latex-template-beamer', 'sjtu', 'tex', 'xelatex' },
  homepage = repo_url,
  license = 'Apache-2.0'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'SJTUBeamer-' .. modrev .. '/contrib',
}

dependencies = { 'sjtubeamer == ' .. modrev }

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/sjtubeamer/contrib/default/sjtubeamerthemedefault.ltx'] = 'default/sjtubeamerthemedefault.ltx',
      ['../tex/latex/sjtubeamer/contrib/minted/sjtubeamerthememinted.ltx'] = 'minted/sjtubeamerthememinted.ltx',
      ['../tex/latex/sjtubeamer/contrib/poster/sjtubeamerthemeposter.ltx'] = 'poster/sjtubeamerthemeposter.ltx',
      ['../tex/latex/sjtubeamer/contrib/sjtug/sjtubeamerthemesjtug.ltx'] = 'sjtug/sjtubeamerthemesjtug.ltx',
      ['../tex/latex/sjtubeamer/contrib/touying/sjtubeamerthemetouying.ltx'] = 'touying/sjtubeamerthemetouying.ltx',
      ['../tex/latex/sjtubeamer/contrib/sjtug/vi/sjtug.pdf'] = 'sjtug/vi/sjtug.pdf',
      ['../tex/latex/sjtubeamer/contrib/sjtug/vi/sjtugtext.pdf'] = 'sjtug/vi/sjtugtext.pdf',
    }
  }
}
