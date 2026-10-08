rockspec_format = "3.0"
package = "ff-lua"
version = "0.26.0-1"
source = {
	url = "git+https://github.com/felipeguilhermefs/ff-lua",
	tag = "v0.26.0",
}
description = {
	homepage = "https://github.com/felipeguilhermefs/ff-lua",
	license = "MIT",
	summary = "Personal package with useful code for playful coding",
	detailed = [[
      Created this package for personal usage, mostly learning general Computer Science topics.

      This package strictly supports Lua 5.5 and over.

      Please don't use it for anything serious... (I don't).
   ]],
	maintainer = "Felipe Flores <felipeguilhermefs@gmail.com>",
}
dependencies = {
	"lua >= 5.5",
}
test_dependencies = {
	"luaunit >= 3.4",
}
test = {
	type = "command",
	script = "test.lua",
}
build = {
	type = "builtin",
	modules = {
		["ff.aoc.matrix"] = "src/aoc/matrix.lua",
		["ff.cache.lru"] = "src/cache/lru.lua",
		["ff.collections.array"] = "src/collections/array.lua",
		["ff.collections.hashmap"] = "src/collections/hashmap.lua",
		["ff.collections.heap"] = "src/collections/heap.lua",
		["ff.collections.intervaltree"] = "src/collections/intervaltree.lua",
		["ff.collections.linkedlist"] = "src/collections/linkedlist.lua",
		["ff.collections.queue"] = "src/collections/queue.lua",
		["ff.collections.radixtree"] = "src/collections/radixtree.lua",
		["ff.collections.set"] = "src/collections/set.lua",
		["ff.collections.stack"] = "src/collections/stack.lua",
		["ff.collections.treemap"] = "src/collections/treemap.lua",
		["ff.func.comparator"] = "src/func/comparator.lua",
		["ff.func.empty"] = "src/func/empty.lua",
		["ff.func.head"] = "src/func/head.lua",
		["ff.func.memoize"] = "src/func/memoize.lua",
		["ff.func.tail"] = "src/func/tail.lua",
		["ff.graph"] = "src/graph/graph.lua",
		["ff.iter.permutations"] = "src/iter/permutations.lua",
		["ff.math.factorial"] = "src/math/factorial.lua",
		["ff.math.fibonacci"] = "src/math/fibonacci.lua",
		["ff.math.max"] = "src/math/max.lua",
		["ff.math.min"] = "src/math/min.lua",
		["ff.math.trunc"] = "src/math/trunc.lua",
		["ff.search.binarysearch"] = "src/search/binarysearch.lua",
		["ff.search.quickselect"] = "src/search/quickselect.lua",
		["ff.sort.bucketsort"] = "src/sort/bucketsort.lua",
		["ff.sort.quicksort"] = "src/sort/quicksort.lua",
		["ff.test.spy"] = "src/test/spy.lua",
	},
}
