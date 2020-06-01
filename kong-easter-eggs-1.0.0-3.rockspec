package = "kong-easter-eggs"

version = "1.0.0-3"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/maxipavlovic/kong-easter-eggs",
  tag = "1.0.0"
}

description = {
  summary = "A Kong plugin for adding of Easter Eggs to your API",
  license = "MIT",
  maintainer = "Max Kolyubyakin <maxipavlovic@gmail.com>"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-easter-eggs.access"] = "src/access.lua",
    ["kong.plugins.kong-easter-eggs.handler"] = "src/handler.lua",
    ["kong.plugins.kong-easter-eggs.header_filter"] = "src/header_filter.lua",
    ["kong.plugins.kong-easter-eggs.schema"] = "src/schema.lua",
  }
}