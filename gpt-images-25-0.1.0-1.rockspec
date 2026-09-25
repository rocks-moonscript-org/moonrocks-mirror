package = "gpt-images-25"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/ryanellis42675/gpt-images-25.git",
   tag = "v0.1.0"
}
description = {
   summary = "SDK client and metadata helper for GPT images 2.5 (https://images25.art)",
   detailed = [[
      Minimal client SDK and metadata integration for GPT images 2.5 AI Image Generator & Editor website.
   ]],
   homepage = "https://images25.art",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["gpt_images_25"] = "gpt_images_25.lua"
   }
}
