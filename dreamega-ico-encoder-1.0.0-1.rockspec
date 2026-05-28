package = "dreamega-ico-encoder"
version = "1.0.0-1"

source = {
   url = "git+https://github.com/dreamega/dreamega-ico-encoder-lua.git",
   tag = "v1.0.0",
}

description = {
   summary = "Generate multi-size ICO favicon files from PNG images",
   detailed = [[
      A pure Lua library for generating ICO favicon files. Supports multiple
      image sizes with proper ICO binary format headers and directory entries.
   ]],
   homepage = "https://dreamega.ai",
   license = "MIT",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["dreamega.ico_encoder"] = "lua/dreamega/ico_encoder.lua",
   },
}
