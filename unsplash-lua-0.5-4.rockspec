package = "unsplash-lua"
version = "0.5-4"
source = {
   url = "git://github.com/spacingnix/unsplash-lua.git",
   tag = "v0.5-4"
}
description = {
   summary = "A wrapper for the Unsplash public API",
   detailed = "A Lua package for the Unsplash public API. Only contains public scope methods",
   homepage = "https://github.com/spacingnix/unsplash-lua",
   license = "MIT License"
}
dependencies = {"lua >= 5.1", "luasocket", "luasec"}
build = {
   type = "builtin",
   modules = {
      unsplash = "unsplash/init.lua",
      ["unsplash.constants.index"] = "unsplash/constants/index.lua",
      ["unsplash.methods.categories"] = "unsplash/methods/categories.lua",
      ["unsplash.methods.collections"] = "unsplash/methods/collections.lua",
      ["unsplash.methods.photos"] = "unsplash/methods/photos.lua",
      ["unsplash.methods.search"] = "unsplash/methods/search.lua",
      ["unsplash.methods.stats"] = "unsplash/methods/stats.lua",
      ["unsplash.methods.users"] = "unsplash/methods/users.lua",
      ["unsplash.unsplash"] = "unsplash/unsplash.lua",
      ["unsplash.utils.querystring"] = "unsplash/utils/querystring.lua"
   }
}
