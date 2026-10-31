local git_ref = '0.3'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'latex-environ'
version = modrev .. '-' .. specrev

local repo_url = 'https://ctan.org/pkg/environ'

dependencies = { 'trimspaces' }

description = {
  summary = 'A new interface for environments in LaTeX',
  detailed =
  [[The package provides the \collect@body command (as in amsmath), as well as a \long version \Collect@Body, for collecting the body text of an environment.

These commands are used to define a new author interface to creating new environments. For example, \NewEnviron{test}, wraps the entire environment body in square brackets, doing the right thing in ignoring leading and trailing spaces.]],
  labels = { 'Macro support' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/environ.tds.zip",
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/environ.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
