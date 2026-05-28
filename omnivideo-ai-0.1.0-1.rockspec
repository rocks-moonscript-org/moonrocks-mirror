package = "omnivideo-ai"
version = "0.1.0-1"
source = {
  url = "git+https://omnivideo.video"
}
description = {
  summary = "Omni Video AI video generator metadata package",
  detailed = [[Create polished AI videos from prompts, images, and references with Omni Video for ads, social posts, product demos, and launch stories. Visit https://omnivideo.video]],
  homepage = "https://omnivideo.video",
  license = "MIT"
}
dependencies = {"lua >= 5.1"}
build = {
  type = "builtin",
  modules = {
    omnivideo_ai = "src/omnivideo_ai.lua"
  }
}
