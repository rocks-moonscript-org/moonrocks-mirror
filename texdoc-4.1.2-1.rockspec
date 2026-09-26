local git_ref = 'v4.1.2'
local modrev = git_ref:gsub("^v", "")
local specrev = '1'

local repo_url = 'https://github.com/TeX-Live/texdoc'

rockspec_format = '3.0'
package = 'texdoc'
version = modrev .. '-' .. specrev

description = {
  summary = 'Documentation access for TeX Live',
  detailed =
  [[texdoc is a Lua script providing easy access to the documentation in TeX Live: PDF, DVI, plain text files, and more. Viewing and other configuration can be extensively customized. It is distributed with TeX Live; MiKTeX provides a program by the same name to do the same job, but its implementation is unrelated.]],
  labels = { 'View documentation' },
  homepage = 'https://tug.org/texdoc/',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev
}

dependencies = { "texrocks" }

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/support/texdoc.zip',
  }
end

build = {
  type = 'none',
  -- copy_directories = { 'doc' },
  install = {
    bin = {
      texdoc = 'script/texdoc.tlu'
    },
    conf = {
      ['../texdoc/texdoc.cnf'] = 'texdoc.cnf'
    },
    lua = {
      "script/texdoclib-alias.tlu",
      "script/texdoclib-cli.tlu",
      "script/texdoclib-config.tlu",
      "script/texdoclib-const.tlu",
      "script/texdoclib-score.tlu",
      "script/texdoclib-search.tlu",
      "script/texdoclib-util.tlu",
      "script/texdoclib-view.tlu",
      "script/texdoclib.tlu",
    }
  }
}

deploy = {
  wrap_bin_scripts = false
}
