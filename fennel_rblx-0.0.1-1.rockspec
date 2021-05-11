local fennel_rblx_version = "0.0.1"

package = "fennel_rblx"
version = fennel_rblx_version .. "-1"
source = {
   url = "git://github.com/glinesbdev/fennel-rblx",
   tag = fennel_rblx_version
}
description = {
   summary = "Fennel Rblx is a workflow tool for Roblox development using the Fennel programming language.",
   detailed = [[
      Using the power of Moon Garden and incorporating the fun of Roblox, develop your Roblox games in the awesome Lisp style Fennel programming language.]],
   homepage = "https://github.com/glinesbdev/fennel-rblx",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "moongarden ~> 0.1.1"
}
build = {
   type = "make",
   modules = {
      fennel = "fennel.lua"
   },
   install = {
      bin = {
         fennel_rblx = "fennel_rblx"
      }
   }
}
