package = "gemini-omni-ai"
version = "0.1.0-1"
source = { url = "git+https://gemini-omni.online" }
description = {
  summary = "Gemini Omni AI video generator metadata package",
  detailed = [[Gemini Omni turns text prompts and images into polished omni video clips. Generate ads, social reels, and launch content with Gemini Omni AI. Visit https://gemini-omni.online]],
  homepage = "https://gemini-omni.online",
  license = "MIT"
}
dependencies = {"lua >= 5.1"}
build = {
  type = "builtin",
  modules = { gemini_omni_ai = "src/gemini_omni_ai.lua" }
}
