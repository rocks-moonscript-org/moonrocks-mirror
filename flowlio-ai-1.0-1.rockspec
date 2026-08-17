package = "flowlio-ai"
version = "1.0-1"

source = {
   url = "git+https://github.com/YOUR_GITHUB_USER/flowlio-ai.git",
   tag = "v1.0"
}

description = {
   summary = "Flowlio AI - an all-in-one AI video generator and AI image generator.",
   detailed = [[
Flowlio AI is an all-in-one AI video generator and AI image generator.
It brings Nano Banana 2, Seedance 2.5, Flux Pro, GPT Image 2 and Veo
together in a single studio, covering text-to-image, image-to-image,
text-to-video and image-to-video.

Describe what you want in plain words and get an image or a video back
in seconds. Pay-as-you-go credits, free credits to start, and a private
library for every generation. No API keys to manage, no tab switching.

This Lua package provides prompt-building and model-lookup helpers for
working with the Flowlio AI model lineup.
]],
   homepage = "https://flowlioai.com",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      flowlio = "src/flowlio.lua"
   }
}
