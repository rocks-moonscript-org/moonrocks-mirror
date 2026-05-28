package = "dropthe"
version = "0.1-1"
source = {
  url = "git://github.com/arnaudleroy-studio/dropthe-lua",
  tag = "v0.1"
}
description = {
  summary = "Lua utilities for the DropThe entity and content platform",
  detailed = [[
    dropthe provides Lua helper functions for working with the DropThe
    data utility media network. Includes URL slug generation, entity URL
    construction, tier formatting, and entity type validation. Designed
    for scripting, data pipelines, and integration with DropThe APIs.
  ]],
  homepage = "https://dropthe.org",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["dropthe"] = "src/dropthe.lua"
  }
}
