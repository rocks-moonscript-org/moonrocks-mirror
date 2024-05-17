rockspec_format = "3.0"
package = "leste"
version = "0.1.2-1"
source = {
   url = "git+https://github.com/AdaiasMagdiel/Leste.git",
   tag = "v0.1.2",
}
description = {
   summary = "A powerful Lua testing framework inspired by PestPHP and pytest",
   detailed = [[
Leste is a powerful and user-friendly Lua testing framework heavily inspired by PestPHP
and pytest, aiming to simplify and streamline your testing process. Just like a compass
guides you in the right direction, Leste serves as a guiding tool for your tests,
ensuring that you stay on the right path to successful testing practices.
]],
   homepage = "https://github.com/AdaiasMagdiel/Leste",
   license = "MIT",
   maintainer = "Adaías Magdiel <eu@adaiasmagdiel.com>",
   labels = {"tests", "quality assurance", "test suites"}
}
build = {
   type = "builtin",
   modules = {
      ["leste.assertions"] = "leste\\assertions.lua",
      ["leste.leste"] = "leste\\leste.lua",
      ["leste.main"] = "leste\\main.lua",
      ["leste.utils.cli"] = "leste\\utils\\cli.lua",
      ["leste.utils.console"] = "leste\\utils\\console.lua",
      ["leste.utils.fs"] = "leste\\utils\\fs.lua"
   },
   install = {
      bin = {
         leste = "leste/main.lua"
      }
   },
   copy_directories = {
      "docs",
      "tests"
   }
}
test = {
   command = "leste",
   flags = {"-v"}
}
