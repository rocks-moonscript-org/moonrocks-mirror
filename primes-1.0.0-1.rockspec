package = "primes"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/DarkWiiPlayer/lua-primes.git",
   tag = "v1.0.0"
}
description = {
   summary = "A module to calculate prime numbers and prime factorizations in Lua.",
   homepage = "https://github.com/darkwiiplayer/lua-primes",
   license = "Unlicense"
}
build = {
   type = "builtin",
   modules = {
      primes = "src/primes.lua"
   }
}
