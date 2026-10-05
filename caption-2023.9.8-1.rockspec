local git_ref = 'CTAN_2023-09-08'
local modrev = git_ref:gsub("^CTAN_", ""):gsub('-0', '-'):gsub('%-', '.')
local specrev = '1'

rockspec_format = '3.0'
package = 'caption'
version = modrev .. '-' .. specrev

local repo_url = 'https://gitlab.com/axelsommerfeldt/caption'

description = {
  summary = 'Customising captions in floating environments',
  detailed =
  [[The caption package provides many ways to customise the captions in floating environments like figure and table, and cooperates with many other packages. Facilities include rotating captions, sideways captions, continued captions (for tables or figures that come in several parts). A list of compatibility notes, for other packages, is provided in the documentation.

The package also provides the "caption outside float" facility, in the same way that simpler packages like capt-of do.

The package supersedes caption2.]],
  labels = { 'Float', 'Caption' },
  homepage = 'https://www.ctan.org/pkg/caption',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/-/archive/' .. git_ref .. '/caption-' .. git_ref .. '.zip',
  dir = 'caption-' .. git_ref
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/caption.zip',
    dir = 'caption'
  }
end

build_dependencies = { }

dependencies = { 'latex-base' }

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
