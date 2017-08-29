package = "fat_error"
version = "0.4-1"
source = {
   url = "https://github.com/henry4k/fat_error/archive/v0.4.tar.gz",
   dir = "fat_error-0.4"
}
description = {
   summary = "Replace error messages with error objects that store metadata.",
   detailed = [[
Errors can be chained e.g. for propagating out of a coroutine,
so you can print the error chain in a consistent manner.
Furthermore one can print the error to multiple destinations: A colored version
for the terminal, a colorless version for the log file, or even aggregate it in
a database for later processing/analysis.]],
   homepage = "https://github.com/henry4k/fat_error",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      fat_error = "src/fat_error.lua",
      ["fat_error.Error"] = "src/fat_error/Error.lua",
      ["fat_error.Frame"] = "src/fat_error/Frame.lua",
      ["fat_error.utils.color"] = "src/fat_error/utils/color.lua",
      ["fat_error.utils.pretty_print"] = "src/fat_error/utils/pretty_print.lua",
      ["fat_error.writers.FancyWriter"] = "src/fat_error/writers/FancyWriter.lua"
   }
}
