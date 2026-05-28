rockspec_format = "3.0"
package = "loglua"
version = "1.6-2"
source = {
   url = "git+https://github.com/pessoa736/loglua.git",
   tag = "v1.6-2"
}
description = {
   summary = "Minimalistic logging helper for Lua.",
   detailed = [[
loglua is a tiny helper to collect messages in-memory and either print them or
append them to a file. Features include: multiple values per log, sections/categories,
automatic grouping, live mode for real-time monitoring, ANSI colors for errors/debug,
section filters, and file saving with timestamps.
	]],
   homepage = "https://github.com/pessoa736/loglua",
   license = "MIT",
   maintainer = "Davi dos Santos Passos"
}
dependencies = {
   "lua >= 5.4"
}
test_dependencies = {
   "busted"
}
test = {
   type = "busted"
}
build = {
   type = "builtin",
   modules = {
      loglua = "loglua/init.lua",
      ["loglua.config"] = "loglua/config.lua",
      ["loglua.formatter"] = "loglua/formatter.lua",
      ["loglua.file_handler"] = "loglua/file_handler.lua",
      ["loglua.help"] = "loglua/help.lua",
      ["loglua.constants.ANSIColors"] = "loglua/constants/ANSIColors.lua",
      ["loglua.constants.helper.en.CompleteAPI"] = "loglua/constants/helper/en/CompleteAPI.lua",
      ["loglua.constants.helper.en.LiveMode"] = "loglua/constants/helper/en/LiveMode.lua",
      ["loglua.constants.helper.en.SectionSystem"] = "loglua/constants/helper/en/SectionSystem.lua",
      ["loglua.constants.helper.en.Surface"] = "loglua/constants/helper/en/Surface.lua",
      ["loglua.utils.formatIndex"] = "loglua/utils/formatIndex.lua"
   },
   copy_directories = {"library", "docs", "spec"}
}
