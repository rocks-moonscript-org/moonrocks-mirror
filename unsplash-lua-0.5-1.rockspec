package = "Unsplash-lua"
version = "0.5-1"
source = {
  url = "git://github.com/spacingnix/unsplash-lua.git",
  tag = "v0.5-1"
}
description = {
  summary = "A wrapper in Lua for the unsplash API",
  detailed = [[
      A library dependent on luasec for requesting public actions to the Unsplash API
   ]],
  homepage = "https://github.com/spacingnix/unsplash-lua",
  license = "MIT" -- or whatever you like
}
dependencies = {
  "lua = 5.1", "luasec", "luasocket"
}
build = {
  type = "builtin",
  modules = {
    ["constants.index"] = "constants/index.lua",
    ["methods.categories"] = "methods/categories.lua",
    ["methods.collections"] = "methods/collections.lua",
    ["methods.photos"] = "methods/photos.lua",
    ["methods.search"] = "methods/search.lua",
    ["methods.stats"] = "methods/stats.lua",
    ["methods.users"] = "methods/users.lua",
    ["utils.querystring"] = "utils/querystring.lua",
    ["unsplash"] = "unsplash.lua",
    ["init"] = "init.lua"
  }
}
