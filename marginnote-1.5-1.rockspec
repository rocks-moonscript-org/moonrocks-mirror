local git_ref = 'v1.5'
local modrev = git_ref:gsub("^v", "")
local specrev = '1'

local repo_url = 'https://codeberg.org/komascript/marginnote'

rockspec_format = '3.0'
package = 'marginnote'
version = modrev .. '-' .. specrev

dependencies = {  }

description = {
  summary = 'Notes in the margin, even where \\marginpar fails',
  detailed =
  [[This package provides the command \marginnote that may be used instead of \marginpar at almost every place where \marginpar cannot be used, e.g., inside floats, footnotes, or in frames made with the framed package.]],
  labels = { 'Marginal', 'Notes' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/marginnote.zip',
    dir = '.'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'l3build',
}
