rockspec_format = "3.0"
package = "block-breaker"
version = "1.0.0-1"

source = {
   url = "https://block-breaker-game.com/releases/block-breaker-1.0.0.tar.gz"
}

description = {
   summary = "A lightweight Lua library for block breaker game mechanics and physics.",
   detailed = [[
Block Breaker Game Engine is a lightweight Lua library that provides core game
mechanics for building block breaker (breakout) style games. It handles ball
physics, paddle control, block collision detection, scoring, and level
progression.

Play the game online: https://block-breaker-game.com

Also available for other languages and platforms. Visit the website for more
information about Block Breaker Game and related tools.
   ]],
   homepage = "https://block-breaker-game.com",
   license = "MIT",
   labels = { "game", "physics", "engine", "breakout", "arcade" },
   maintainer = "Block Breaker Team <contact@block-breaker-game.com>"
}

dependencies = {
   "lua >= 5.1, < 5.5"
}

build = {
   type = "builtin",
   modules = {
      ["block-breaker"] = "src/block-breaker.lua"
   }
}
