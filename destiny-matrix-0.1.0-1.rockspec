rockspec_format = "3.0"

package = "destiny-matrix"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/wsgtcyx/LuaRocks-of-Destiny-Matrix",
  tag = "v0.1.0"
}

description = {
  summary = "Destiny Matrix energy/points calculator",
  detailed = "Calculates Destiny Matrix points, purposes, chakra chart (energy/physics/emotions), and year-cycle values from a birth date.",
  homepage = "https://destiny-matrix.cc/id/",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["destiny_matrix.energy"] = "src/destiny_matrix/energy.lua"
  }
}
