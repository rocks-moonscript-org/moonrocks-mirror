local git_ref = '0.0.7'
local modrev = '0.0.7'
local specrev = '1'

local repo_url = 'https://github.com/wakatime/prompt-style.lua'

rockspec_format = '3.0'
package = 'prompt-style'
version = modrev ..'-'.. specrev

description = {
  summary = 'REPL for neovim, luatex, ..., lua plugin for powerlevel10k style prompt and WakaTime time tracking.',
  detailed = '',
  labels = { 'lua', 'lualatex', 'luatex', 'neovim', 'nerdfont', 'pandoc', 'powerlevel10k', 'prompt', 'repl', 'texlua', 'wakatime' } ,
  homepage = 'https://prompt-style-lua.readthedocs.io/',
  license = 'GPL-3.0'
}

dependencies = {
    "lua >= 5.1",
    "ansicolors",
    "argparse",
    "luafilesystem",
    "luaprompt"
}

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'prompt-style.lua-' .. '0.0.7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  install = {
      -- cannot use _VERSION
      bin = {
          "bin/nvimp",
          "bin/texluap",
          "bin/texluajitp",
          "bin/hbtexluap",
          "bin/hbtexluajitp",
          "bin/pandocp",
          "bin/neomuttp"
      },
  },
}
