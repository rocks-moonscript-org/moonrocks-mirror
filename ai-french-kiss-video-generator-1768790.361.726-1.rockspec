rockspec_format = "3.0"
package = "ai-french-kiss-video-generator"
version = "1768790.361.726-1"
source = {
   url = "git+https://github.com/gcPC0x/ai-french-kiss-video-generator.git",
   tag = "v1768790.361.726"
}
description = {
   summary = "High-performance AI ai french kiss video generator for supermaker.ai/video/ai-french-kiss-video-generator/",
   detailed = [[
      luarocks install ai-french-kiss-video-generator
      local ai_video = require("ai-french-kiss-video-generator")
      -- Create a new scene
      local scene = ai_video.new_scene({width = 1920, height = 1080, duration = 10})
      -- Add a static image
      scene:add_image("path/to/image.png", {x = 0, y = 0})
      -- Render the scene to a video file
      scene:render("output.mp4")
      local ai_video = require("ai-french-kiss-video-generator")
      local scene = ai_video.new_scene({width = 1280, height = 720, duration = 5})
      -- Add text with a fade-in animation
      scene:add_text("Hello, World!", {
      x = 100,
      y = 100,
      font = "Arial",
   ]],
   homepage = "https://supermaker.ai/video/ai-french-kiss-video-generator/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-french-kiss-video-generator"] = "src/init.lua"
   }
}
