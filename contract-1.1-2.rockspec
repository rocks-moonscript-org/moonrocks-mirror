package = "contract"
version = "1.1-2"
source = {
   url = "git://github.com/mrrogge/contract",
   tag = 'v1.1'
}
description = {
   summary = "A function argument type-checker.",
   detailed = [[
      This module checks whether or not arguments passed to a function satisfy a specified contract string. These strings define the argument type requirements for a given function using a custom mini-language. For example, "rt,n|s" represents a contract of one required table argument and one optional argument that can be either a number or a string.
   ]],
   homepage = "https://github.com/mrrogge/contract",
   license = "MIT"
}
dependencies = {
   'lua >= 5.1'
}
build = {
   type = "builtin",
   modules = {
      contract = "contract.lua"
   }
}