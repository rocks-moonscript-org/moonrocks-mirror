local git_ref = '1.1'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'trimspaces'
version = modrev .. '-' .. specrev

local repo_url = 'https://ctan.org/pkg/trimspaces'

description = {
  summary = 'Trim spaces around an argument or within a macro',
  detailed =
  [[A very short package that allows you to expandably remove spaces around a token list (commands are provided to remove spaces before, spaces after, or both); or to remove surrounding spaces within a macro definition, or to define space-stripped macros.]],
  labels = { 'Macro support' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/trimspaces.tds.zip",
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/trimspaces.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
