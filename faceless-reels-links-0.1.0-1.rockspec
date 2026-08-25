rockspec_format = "3.0"

package = "faceless-reels-links"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/allen207/faceless-reels-lua.git",
   tag = "v0.1.0"
}

description = {
   summary = "Canonical public URLs for the Faceless Reels product",
   detailed = [[
      A small Lua module providing the Faceless Reels homepage and pricing
      URLs plus validated public showcase-video URL generation.
   ]],
   homepage = "https://faceless-reels.io",
   issues_url = "https://github.com/allen207/faceless-reels-lua/issues",
   maintainer = "Allen328",
   license = "MIT",
   labels = { "faceless-reels", "links", "video" }
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["faceless_reels.links"] = "src/faceless_reels/links.lua"
   }
}

