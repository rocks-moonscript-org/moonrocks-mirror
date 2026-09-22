local git_ref = 'v0.3.1'
local specrev = '1'

-- in the luarocks-tag-release action, we set USED_AS_TEMPLATE to "USED_AS_TEMPLATE"
-- to know if the rockspec is running in actual release mode
local release_mode = 'USED_AS_TEMPLATE' == "USED_AS_TEMPLATE"

local repo_url = 'https://github.com/avante-corp/avante.nvim'


rockspec_format = '3.0'
package = 'avante.nvim'

dependencies = {
  'lua == 5.1',
  'luarocks >= 3.11.1,< 4.0.0',
  'plenary.nvim',
  'nui.nvim'
}

test_dependencies = { 'busted' }


if release_mode then
  -- 0.3.1 is "git_ref" stripped of "v" prefix (disallowed in rockspec filename)
  local modrev = '0.3.1'
  version = '0.3.1-'.. specrev
  source = {
    url = repo_url .. '/archive/' .. git_ref .. '.zip',
    dir = 'avante.nvim-' .. modrev,
  }
else

  version = "scm-" .. specrev
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'ftplugin', 'plugin' } ,
}

description = {
  summary = 'Use your Neovim like using Cursor AI IDE!',
  detailed = [[
avante.nvim** is a Neovim plugin designed to emulate the behaviour of the [Cursor](https://www.cursor.com) AI IDE. It provides users with AI-driven code suggestions and the ability to apply these recommendations directly to their source files with minimal effort.]],
  labels = { 'neovim', 'ai', 'llm' } ,
  homepage = 'https://github.com/avante-corp/avante.nvim',
  license = 'Apache-2.0'
}

