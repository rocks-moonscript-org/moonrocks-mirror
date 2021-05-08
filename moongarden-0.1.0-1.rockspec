local moongarden_version = "0.1.0"

package = "moongarden"
version = moongarden_version .. "-1"
source = {
   url = "git://github.com/glinesbdev/moongarden",
   tag = moongarden_version
}
description = {
   summary = "Moon Garden is a development streamlining tool for the Fennel programming language.",
   detailed = [[
      Moon Garden is a development streamlining tool for the Fennel programming language.
      This tool is aimed to make the general purpose programming experience for Fennel smoother.
      With help from the Fennel compiler, Moon Garden can compile .fnl to .lua files in a given directory as well as watching for file changes.]],
   homepage = "https://github.com/glinesbdev/moongarden",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.5"
}
build = {
   type = "make",
   modules = {
      fennel = "fennel.lua"
   },
   install = {
      bin = {
         moongarden = "moongarden"
      }
   }
}
