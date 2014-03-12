package = "DataDumper"
version = "1.0-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/DataDumper-1.0.tar.gz",
   md5 = "0555bab533a8ca082de538db94c0e010"
}
description = {
   summary = "Converts a Lua value into its expression as a string.",
   detailed = [[
    require 'DataDumper' ;
    print( DataDumper(value[, varname, fastmode, indent]) )
    The function has four parameters; only the first is mandatory.
    It always returns a string, which is valid Lua code; executing
    this will import back to a variable the complete structure
    of the original. For simple structures, there is only one
    Lua instruction (e.g. a table constructor), but some more
    complex features will output a script with more instructions.
   ]],
   homepage = "http://lua-users.org/wiki/DataDumper",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
build = {
   type = "builtin",
   modules = {
      DataDumper = "DataDumper.lua"
   },
   copy_directories = {}
}
