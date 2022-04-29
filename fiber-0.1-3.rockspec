package = "fiber"
version = "0.1-3"
source = {
   url = "git+https://github.com/qrmoon/fiber.git"
}
description = {
   homepage = "https://github.com/qrmoon/fiber",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3, < 5.5",
   "qlass >= 0.1"
}
build = {
   type = "builtin",
   modules = {
      fiber = "fiber.lua"
   }
}
