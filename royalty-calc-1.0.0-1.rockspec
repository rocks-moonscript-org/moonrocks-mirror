package = "royalty-calc"
version = "1.0.0-1"
source = {
   url = "git+https://gitea.com/texasroyaltybrokers/royalty-calc-lua.git",
   tag = "v1.0.0"
}
description = {
   summary = "Helpers for estimating oil and gas royalty payments for mineral owners.",
   detailed = "Small Lua helpers for estimating decimal interest and gross monthly royalty for oil and gas mineral owners. Published by Texas Royalty Brokers.",
   homepage = "https://texasroyaltybrokers.com/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      royalty_calc = "royalty_calc.lua"
   }
}
