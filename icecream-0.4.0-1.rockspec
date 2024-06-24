package = "icecream"

local package_version = "0.4.0"
local rockspec_revision = "1"

version = package_version .. "-" .. rockspec_revision

source = {
   url = "git+https://github.com/jeffzi/icecream.lua.git",
}

if package_version == "dev" then
   source.branch = "main"
else
   source.tag = "v" .. package_version
end

description = {
   summary = "🍦 Never use print() to debug again. A Lua port of the Python IceCream library.",
   detailed = [[
      icecream.lua is a port of the Python debugging utility IceCream.
      It enhances print debugging by providing more informative and visually appealing output for Lua applications.
      Say goodbye to traditional print statements and embrace a better way to debug your code.
   ]],
   homepage = "https://github.com/jeffzi/icecream.lua",
   license = "MIT",
}

dependencies = {
   "lua >= 5.1",
   "dumbluaparser >= 2.3",
}

build = {
   type = "builtin",
   modules = {
      icecream = "src/icecream.lua",
   },
}
