package = "asteroid"
version = "1.0-1"

source = {
   url = "git+https://github.com/IEatUranium238/asteroid.git"
}

description = {
   summary = "Stupidly simple lua string templating",
   detailed = [[
      Stupidly simple lua string templating rock that
      embeds values into string with @ sign.

      See full readme at https://github.com/IEatUranium238/asteroid/blob/main/README.md
   ]],
   homepage = "https://github.com/IEatUranium238/asteroid",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      asteroid = "src/asteroid.lua"
   }
}
