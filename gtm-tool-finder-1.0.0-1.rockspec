package = "gtm-tool-finder"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/jaizendra-netizen/gtm-tool-finder-lua.git",
   tag = "v1.0.0"
}
description = {
   summary = "Search GTM tool API reviews, tool comparisons and GTM glossary terms from OneGTMLab.",
   detailed = "Offline search over the OneGTMLab GTM tool directory: API reviews for 66 sales and marketing tools, 99 head-to-head comparisons and 110 GTM glossary terms. Lua API and command line.",
   homepage = "https://www.onegtmlab.dev",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["gtm_tool_finder"] = "gtm_tool_finder/init.lua",
      ["gtm_tool_finder.data"] = "gtm_tool_finder/data.lua"
   },
   install = {
      bin = { ["gtm-tool-finder"] = "bin/gtm-tool-finder" }
   }
}
