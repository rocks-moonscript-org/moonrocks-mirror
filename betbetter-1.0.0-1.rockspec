package = "betbetter"
version = "1.0.0-1"
source = {
   url = "git+https://gitlab.com/betbetterworld/betbetter-lua.git",
   tag = "v1.0.0"
}
description = {
   summary = "Client for the free Bet Better sports model API (no API key)",
   detailed = [[
Reads Bet Better's open sports analytics feeds (model probabilities and fair
odds for upcoming games and player markets) and includes helpers to compute a
bookmaker margin and margin-free probabilities from decimal prices.
Data licence CC BY 4.0.]],
   homepage = "https://betbetter.world/api/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luasec >= 0.9",
   "luasocket >= 3.0",
   "dkjson >= 2.5"
}
build = {
   type = "builtin",
   modules = {
      betbetter = "betbetter.lua"
   }
}
