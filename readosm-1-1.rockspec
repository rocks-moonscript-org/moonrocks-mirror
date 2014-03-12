package = "readosm"
version = "1-1"
source =
{
  url = "git://github.com/geoffleyland/lua-readosm.git",
  branch = "master",
  tag = "v1",
}
description =
{
  summary = "OSM XML and PBF file reading through readosm",
  homepage = "http://github.com/geoffleyland/lua-readosm",
  license = "MIT/X11",
  maintainer = "Geoff Leyland <geoff.leyland@incremental.co.nz>"
}
dependencies = { "lua >= 5.1" }
build =
{
  type = "builtin",
  modules =
  {
    readosm = "lua/readosm.lua",
    ["readosm-ffi"] = "lua/readosm-ffi.lua",
    ["readosm.cdefs"] = "lua/readosm/cdefs.lua"
  },
}
