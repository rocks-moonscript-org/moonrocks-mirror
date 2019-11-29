package = "contract"
version = "0.2-1"
source = {
   url = "https://gitlab.com/mrogge_/lua-contract/-/archive/v0.2/lua-contract-v0.2.tar.gz",
   tag = 'v0.2'
}
description = {
   summary = "Type-checking for function args using contracts",
   detailed = [[
      This is a small library for LUA that implements a design by contract
      approach to writing code. In general, function calls are compared
      against a "contract string" at run time that defines what types are 
      allowed for each function argument.
   ]],
   homepage = "https://gitlab.com/mrogge_/lua-contract",
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