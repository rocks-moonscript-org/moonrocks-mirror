rockspec_format = "3.0"
package = "ff-lua"
version = "0.2.0-1"
source = {
	url = "git+https://github.com/felipeguilhermefs/ff-lua",
	tag = "v0.2.0",
}
description = {
	homepage = "https://github.com/felipeguilhermefs/ff-lua",
	license = "MIT",
	summary = "Personal package with useful code for playful coding",
	detailed = [[
      Created this package for personal usage and learning of Lua.

      This is intended for mostly avoid reimplementing Data Structures and
      Algorithms.

      Please don't use it for anything serious... (I don't).
   ]],
	maintainer = "Felipe Flores <felipeguilhermefs@gmail.com>",
}
dependencies = {
	"lua ~> 5.4",
}
test_dependencies = {
	"luaunit >= 3.4",
}
build = {
	type = "builtin",
	modules = {
		["ff"] = "src/init.lua",
		["ff.empty"] = "src/empty.lua",
		["ff.getinsert"] = "src/getinsert.lua",
		["ff.head"] = "src/head.lua",
		["ff.memoize"] = "src/memoize.lua",
		["ff.spy"] = "src/spy.lua",
		["ff.stack"] = "src/stack.lua",
		["ff.tail"] = "src/tail.lua",
	},
}
