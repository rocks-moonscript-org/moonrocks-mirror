package = "fraction-royalty-calc"
version = "1.0.0-1"
source = {
  url = "git+https://codeberg.org/fractionroyaltyhq/fraction-royalty-calc-lua.git",
  tag = "1.0.0"
}
description = {
  summary = "Tiny helper for oil and gas fraction royalty decimal math.",
  detailed = [[Tiny helper for oil and gas fraction royalty decimal math used by Fraction Royalty.]],
  homepage = "https://fractionroyalty.com",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["fraction_royalty_calc"] = "fraction_royalty_calc/init.lua"
  }
}
