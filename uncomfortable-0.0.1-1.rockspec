package = "uncomfortable"
version = "0.0.1-1"

source = {
   url = "https://gist.github.com/antimemeai/d8b05707282aed0b3784513189a88841/archive/6e220481963de0d15ef5ca717754dbcd160a4a69.zip",
   dir = "d8b05707282aed0b3784513189a88841-6e220481963de0d15ef5ca717754dbcd160a4a69",
}

description = {
   summary = "Placeholder reserving the uncomfortable name for antimeme-ai",
   detailed = [[
      Reserved name. This rock has no behavior. A real implementation will
      replace it under the same name. See
      https://github.com/antimeme-ai/uncomfortable
   ]],
   homepage = "https://github.com/antimeme-ai/uncomfortable",
   license = "MIT",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      uncomfortable = "uncomfortable.lua",
   },
}
