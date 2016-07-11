package = "procdata"
version = "1.0-1"

source = {
   url = "git://github.com/analuciadm/procdata",
   tag = "v1.0",
}

description = {
   summary = "[[Lua access to Linux /proc data",
   detailed = [[
     Lua access to system information provided by the Linux _**/proc**_ pseudo-file system.
   ]],
   license = "MIT",
}

dependencies = {
   "luaposix",
   "luafilesystem",
}

build = {
   type = "builtin",
   modules = {
     procdata = "procdata.lua",
   },
}
