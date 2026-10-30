local git_ref = '1.5b'
local modrev = git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'silence'
version = modrev .. '-' .. specrev

local repo_url = 'https://ctan.org/pkg/silence'

description = {
  summary = 'Selective filtering of error messages and warnings',
  detailed =
  [[The package allows the user to filter out unwanted warnings and error messages issued by LaTeX, packages and classes, so they won’t pop out when there’s nothing one can do about them.

Filtering goes from the very broad ("avoid all messages by such and such") to the fine-grained ("avoid messages that begin with…").

Messages may be saved to an external file for later reference.]],
  labels = { 'Compilation' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/silence.zip",
  dir = 'silence'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/silence.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/silence/silence.sty'] = 'silence.sty',
    }
  }
}
