package = "verifier-pack-cost"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/jaizendra-netizen/verifier-pack-cost.git",
   tag = "v1.0.0"
}
description = {
   summary = "Lua CLI that prices verifying an email list from the published credit packs of two verifiers: billable credits after fre",
   detailed = "Lua CLI that prices verifying an email list from the published credit packs of two verifiers: billable credits after free rows, cheapest pack combination, expiry notes. Prices read 25 Oct 2026.",
   homepage = "https://www.onegtmlab.dev/tool-directory/compare/bouncer-vs-neverbounce",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["vpc"] = "src/vpc.lua"
   },
   install = {
      bin = { ["verifier-pack-cost"] = "bin/verifier-pack-cost" }
   }
}
