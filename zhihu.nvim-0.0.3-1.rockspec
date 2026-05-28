local git_ref = '0.0.3'
local modrev = '0.0.3'
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

dependencies = { "lua >= 5.1", "platformdirs", "lsqlite3", "lua-requests-temp", "htmlparser", "lua-cjson", "md5", "sha1",
  "base64", "html-entities", "mimetypes" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zhihu.nvim-' .. '0.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'rust-mlua',
  copy_directories = { 'plugin' } ,
  modules = {
    "chrome_cookie",
    "markdown_to_html",
  },
  install = {
    lua = {
      ["zhihu.auth.scripts.firefox"] = "lua/zhihu/auth/scripts/firefox.sql",
      ["zhihu.auth.scripts.auth_chrome"] = "lua/zhihu/auth/scripts/auth_chrome.py",
      ["zhihu.auth.auth"] = "lua/zhihu/auth/auth.lua",
      ["zhihu.auth.cache"] = "lua/zhihu/auth/cache.lua",
      ["zhihu.auth.chrome"] = "lua/zhihu/auth/chrome.lua",
      ["zhihu.auth.firefox"] = "lua/zhihu/auth/firefox.lua",
      ["zhihu.auth.pychrome"] = "lua/zhihu/auth/pychrome.lua",
      ["zhihu.auth"] = "lua/zhihu/auth.lua",
      ["zhihu.api.article.get"] = "lua/zhihu/api/article/get.lua",
      ["zhihu.api.article.post"] = "lua/zhihu/api/article/post.lua",
      ["zhihu.api.article.patch"] = "lua/zhihu/api/article/patch.lua",
      ["zhihu.api.image.post"] = "lua/zhihu/api/image/post.lua",
      ["zhihu.api.image.put"] = "lua/zhihu/api/image/put.lua",
      ["zhihu.article.templates.Untitled"] = "lua/zhihu/article/templates/Untitled.md",
      ["zhihu.article.generator.generator"] = "lua/zhihu/article/generator/generator.lua",
      ["zhihu.article.generator.markdown"] = "lua/zhihu/article/generator/markdown.lua",
      ["zhihu.article.html"] = "lua/zhihu/article/html.lua",
      ["zhihu.article.markdown"] = "lua/zhihu/article/markdown.lua",
      ["zhihu.article"] = "lua/zhihu/article.lua",
      ["zhihu.image"] = "lua/zhihu/image.lua",
    }
  },
}
