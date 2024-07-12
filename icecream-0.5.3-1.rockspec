rockspec_format = "3.0"

package = "icecream"

local package_version = "0.5.3"
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
   summary = "🍦 Never use print() to debug again. A Lua port of the Python debugging utility IceCream.",
   detailed = [[
icecream.lua enhances print debugging by providing more informative and visually appealing output.
Use ic() just like you would use print() for debugging.

Features:
- Automatically includes the expressions and their values.
- Provides contextual information to help you locate where the print statement was called.
- Outputs are designed to be easily readable, reducing the cognitive load during debugging.

For more information and usage examples, visit the project homepage.
   ]],
   homepage = "https://github.com/jeffzi/icecream.lua",
   license = "MIT",
   labels = { "debug", "logs" },
}

dependencies = {
   "lua >= 5.1",
   -- optional
   "ansicolors >= 1.0.2",
   "dumbluaparser >= 2.3",
   "inspect >= 3.1.3",
   "luasystem >= 0.4.0",
}

build = {
   type = "builtin",
   modules = {
      icecream = "src/icecream.lua",
   },
}
