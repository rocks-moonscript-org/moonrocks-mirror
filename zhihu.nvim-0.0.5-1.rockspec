local git_ref = '0.0.5'
local modrev = '0.0.5'
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
  "base64", "html-entities", "mimetypes", "uuid" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zhihu.nvim-' .. '0.0.5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'rust-mlua',
  modules = {
    "chrome_cookie",
    "markdown_to_html",
  },
  copy_directories = {
    "plugin",
  },
  install = {
    lua = {
      ["zhihu.auth.scripts.firefox"] = "lua/zhihu/auth/scripts/firefox.sql",
      ["zhihu.auth.auth"] = "lua/zhihu/auth/auth.lua",
      ["zhihu.auth.cache"] = "lua/zhihu/auth/cache.lua",
      ["zhihu.auth.chrome"] = "lua/zhihu/auth/chrome.lua",
      ["zhihu.auth.firefox"] = "lua/zhihu/auth/firefox.lua",
      ["zhihu.auth"] = "lua/zhihu/auth.lua",
      ["zhihu.api.get"] = "lua/zhihu/api/get.lua",
      ["zhihu.api.post"] = "lua/zhihu/api/post.lua",
      ["zhihu.api.post.article"] = "lua/zhihu/api/post/article.lua",
      ["zhihu.api.post.answer"] = "lua/zhihu/api/post/answer.lua",
      ["zhihu.api.post.image"] = "lua/zhihu/api/post/image.lua",
      ["zhihu.api.post.publish"] = "lua/zhihu/api/post/publish.lua",
      ["zhihu.api.patch"] = "lua/zhihu/api/patch.lua",
      ["zhihu.api.put"] = "lua/zhihu/api/put.lua",
      ["zhihu.article.templates.Untitled"] = "lua/zhihu/article/templates/Untitled.md",
      ["zhihu.article.generator.generator"] = "lua/zhihu/article/generator/generator.lua",
      ["zhihu.article.generator.markdown"] = "lua/zhihu/article/generator/markdown.lua",
      ["zhihu.article.html"] = "lua/zhihu/article/html.lua",
      ["zhihu.article.markdown"] = "lua/zhihu/article/markdown.lua",
      ["zhihu.article"] = "lua/zhihu/article.lua",
      ["zhihu.image"] = "lua/zhihu/image.lua",
      ["zhihu.init"] = "lua/zhihu/init.lua",
    }
  },
}

