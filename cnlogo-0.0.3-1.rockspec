local git_ref = '0.0.3'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://github.com/yuxtech/cnlogo'

rockspec_format = '3.0'
package = 'cnlogo'
version = modrev ..'-'.. specrev

description = {
  summary = 'A package designed to produce logos of Chinese colleges.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/yuxtech/cnlogo',
  license = 'AGPL-3.0-or-later'
}

build_dependencies = { "luatex", "latex-base" }

dependencies = { "pgf" }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cnlogo-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'l3build'
}
