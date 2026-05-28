rockspec_format = "3.0"
package = "lupck"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/WellizxSilva/lupck.git",
   branch = "main"
}

description = {
   summary = "A lightweight Lua script and asset packer.",
   detailed = [[
      Lupck bundles Lua projects into standalone executables or .lpk files.
      It features a memory-resident VFS for zero-extraction execution.
   ]],
   homepage = "https://github.com/WellizxSilva/lupck",
   license = "MIT"
}

dependencies = {
   "lua >= 5.4"
}

build = {
   type = "builtin",
   modules = {
      ["lupck"] = "lua/lupck/init.lua"
   }
}





