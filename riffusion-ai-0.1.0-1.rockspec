rockspec_format = "3.0"
package = "riffusion-ai"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/eavemma5-tech/riffusion-ai"
}
description = {
  summary = "Riffusion AI music generator metadata package",
  detailed = [[Riffusion AI music generator for creators. Generate AI music ideas from text prompts, vocals, instrumentals, loops, and soundtrack workflows. Visit https://riffusion.org]],
  homepage = "https://riffusion.org",
  license = "MIT"
}
dependencies = {"lua >= 5.1"}
build = {
  type = "builtin",
  modules = {
    riffusion_ai = "src/riffusion_ai.lua"
  }
}
