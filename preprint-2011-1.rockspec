local git_ref = '2011'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/preprint'

rockspec_format = '3.0'
package = 'preprint'
version = modrev .. '-' .. specrev

description = {
  summary = [[A bundle of packages provided "as is"]],
  detailed =
  [[The bundle comprises:

    authblk, which permits footnote style author/affiliation input in the \author command,
    balance, to balance the end of \twocolumn pages,
    figcaps, to send figure captions, etc., to end document,
    fullpage, to set narrow page margins and set a fixed page style, and
    sublabel, which permits counters to be subnumbered.]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/preprint.zip",
  dir = 'preprint'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/required/preprint.zip',
    dir = 'preprint'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'command',
  build_command = [[
      luatex --interaction=nonstopmode authblk.ins
      luatex --interaction=nonstopmode balance.ins
      luatex --interaction=nonstopmode figcaps.ins
      luatex --interaction=nonstopmode fullpage.ins
      luatex --interaction=nonstopmode sublabel.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/preprint/authblk.pdf'] = 'authblk.pdf',
      ['../doc/latex/preprint/balance.pdf'] = 'balance.pdf',
      ['../doc/latex/preprint/figcaps.pdf'] = 'figcaps.pdf',
      ['../doc/latex/preprint/fullpage.pdf'] = 'fullpage.pdf',
      ['../doc/latex/preprint/sublabel.pdf'] = 'sublabel.pdf',
      ['../tex/latex/preprint/authblk.sty'] = 'authblk.sty',
      ['../tex/latex/preprint/balance.sty'] = 'balance.sty',
      ['../tex/latex/preprint/figcaps.sty'] = 'figcaps.sty',
      ['../tex/latex/preprint/fullpage.sty'] = 'fullpage.sty',
      ['../tex/latex/preprint/sublabel.sty'] = 'sublabel.sty',
    }
  }
}
