package = "mjolnir.winter"

-- versioning

local src_version = "0.3.2"
local pkg_version = "0"
version = src_version .. "-" .. pkg_version

-- General metadata:

local url = "github.com/knl/mjolnir.winter"
local desc = [[
  A module for moving/resizing windows using a fluent interface.
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
  "mjolnir.cmsj.appfinder",
  "mjolnir.screen",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir.winter"] = "winter.lua",
  },
}
