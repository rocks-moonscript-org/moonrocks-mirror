package = "luamark"

local package_version = "0.5.0"
local rockspec_revision = "1"

version = package_version .. "-" .. rockspec_revision

source = {
   url = "git+https://github.com/jeffzi/luamark.git",
}

if package_version == "dev" then
   source.branch = "main"
else
   source.tag = "v" .. package_version
end

description = {
   summary = "A lightweight, portable microbenchmarking library.",
   detailed = [[
      LuaMark is a portable microbenchmarking library for Lua, offering precise measurement of
      execution time and memory usage.
   ]],
   homepage = "https://github.com/jeffzi/luamark",
   license = "MIT",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      luamark = "src/luamark.lua",
   },
}
