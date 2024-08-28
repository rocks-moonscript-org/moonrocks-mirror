rockspec_format = "3.0"
package = "ff-lua"
version = "0.9.0-1"
source = {
	url = "git+https://github.com/felipeguilhermefs/ff-lua",
	tag = "v0.9.0",
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
		["ff.cache.lru"] = "src/cache/lru.lua",
		["ff.collections.binarytree"] = "src/collections/binarytree.lua",
		["ff.collections.hashmap"] = "src/collections/hashmap.lua",
		["ff.collections.heap"] = "src/collections/heap.lua",
		["ff.collections.linkedlist"] = "src/collections/linkedlist.lua",
		["ff.collections.queue"] = "src/collections/queue.lua",
		["ff.collections.stack"] = "src/collections/stack.lua",
		["ff.empty"] = "src/func/empty.lua",
		["ff.factorial"] = "src/math/factorial.lua",
		["ff.fibonacci"] = "src/math/fibonacci.lua",
		["ff.head"] = "src/func/head.lua",
		["ff.max"] = "src/math/max.lua",
		["ff.memoize"] = "src/func/memoize.lua",
		["ff.min"] = "src/math/min.lua",
		["ff.spy"] = "src/test/spy.lua",
		["ff.tail"] = "src/func/tail.lua",
		["ff.trunc"] = "src/math/trunc.lua",
	},
}
