local git_ref = 'v3.0.0'
local modrev = git_ref:gsub("^v", "")
local specrev = '1'

rockspec_format = '3.0'
package = 'csvsimple'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/T-F-S/csvsimple/'

description = {
  summary = 'Simple CSV file processing',
  detailed =
  [[The package provides a simple LaTeX interface for the processing of files with comma separated values (CSV); it relies on the key value syntax supported by pgfkeys to simplify usage.

Filtering and table generation are especially supported; however, this lightweight tool offers no support for data sorting or data base storage.

The package depends on etoolbox, ifthen, pgfrcs, pgfkeys, and shellesc.]],
  labels = { 'Data display', 'Data import', 'Experimental LaTeX3', 'CSV support' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'csvsimple-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/csvsimple.tds.zip',
    dir = '.'
  }
end

dependencies = { 'etoolbox', 'pgf', 'latex-tools' }

build = {
  type = 'none',
  copy_directories = { 'tex', 'doc' }
}
