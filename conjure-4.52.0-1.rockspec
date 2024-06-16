local git_ref = 'v4.52.0'
local modrev = '4.52.0'
local specrev = '1'

local repo_url = 'https://github.com/Olical/conjure'

rockspec_format = '3.0'
package = 'conjure'
version = modrev ..'-'.. specrev

description = {
  summary = 'Interactive evaluation for Neovim (Clojure, Fennel, Janet, Racket, Hy, MIT Scheme, Guile, Python and more!)',
  detailed = '',
  labels = { 'cider', 'clojure', 'clojure-repl', 'clojurescript', 'deoplete-source', 'guile', 'hy-lang', 'janet-lang', 'mit-scheme', 'neovim', 'nrepl', 'racket', 'racket-lang', 'unlicense' } ,
  homepage = 'https://conjure.fun',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'conjure-' .. '4.52.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'rplugin' } ,
}
