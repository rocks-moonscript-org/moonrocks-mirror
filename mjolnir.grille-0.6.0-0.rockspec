package = "mjolnir.grille"
-- versioning

local src_version = "0.6.0"
local pkg_version = "0"
version = src_version .. "-" .. pkg_version

-- General metadata:

local url = "github.com/knl/mjolnir.grille"
local desc = [[
  A module for moving/resizing your windows along a virtual and horizontal grid(s), using a fluent interface.
]]

source = {
  url = "https://" .. url .. "/archive/" .. src_version .. ".tar.gz",
  dir = package .. "-" .. src_version,
}

description = {
  summary = desc,
  detailed = desc,
  homepage = "https://" .. url,
  license = "BSD",
}

-- Dependencies:

supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir.winter",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir.grille"] = "grille.lua",
  },
}
