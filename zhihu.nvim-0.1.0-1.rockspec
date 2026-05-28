local git_ref = '0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/pxwg/zhihu.nvim'

rockspec_format = '3.0'
package = 'zhihu.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/pxwg/zhihu.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev .. '-' .. specrev

description = {
  summary = 'Zhihu on Neovim | 知乎的neovim插件',
  detailed = '',
  labels = { 'zhihu', 'tex', 'typst', 'neovim', },
  homepage = 'https://github.com/pxwg/zhihu.nvim',
  license = 'MIT',
}

build_dependencies = {}

dependencies = { "lua >= 5.1", "lua-requests-temp", "lua-cjson", "htmlparser", "html-entities", "md5", "sha1", "base64", "uuid", "mimetypes", "auth", "zfh" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zhihu.nvim-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = {
    "plugin",
  },
}
