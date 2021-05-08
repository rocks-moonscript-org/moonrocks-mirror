local moongarden_version = "0.0.1"

package = "moongarden"
version = moongarden_version .. "-1"
source = {
   url = "git://github.com/glinesbdev/moongarden",
   tag = moongarden_version
}
description = {
   summary = "Moon Garden is a helper tool used for the Fennel programming language.",
   detailed = [[
      Moon Garden is a helper tool used for the Fennel programming language.
      This tool is aimed to make the general purpose programming experience for Fennel more smooth and easier to use.]],
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
