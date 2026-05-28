
local git_ref = '0.0.1'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/neo451/jieba-lua'

rockspec_format = '3.0'
package = 'jieba-lua'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/neo451/jieba-lua"
  package = repo_url:match("/([^/]+)/?$")
end
-- not jieba-lua
package = 'jieba'
version = modrev .. '-' .. specrev

description = {
  summary = "Chinse word segmentation library.",
  detailed = [[
      Chinse word segmentation library for Lua, based on the original python implementation.
   ]],
  homepage = "https://github.com/noearc/jieba-lua",
  license = "MIT",
}

dependencies = {
   "lua >= 5.1",
   "lpeg >= 1.1.0-1",
}

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'jieba-lua-' .. '0.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
   type = "builtin",
}
