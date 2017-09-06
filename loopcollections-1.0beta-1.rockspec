package = "loopcollections"
version = "1.0beta-1"
source = {
	url = "https://github.com/renatomaia/loop-collections/archive/v1.0beta.zip",
	dir = "loop-collections-1.0beta",
}
description = {
	summary = "LOOP classes for data structures in Lua",
	detailed = [[
		This group contains classes that implement different data structures that
		are particularly efficient in Lua.
	]],
	homepage = "https://github.com/renatomaia/loop-collections",
	license = "MIT",
}
dependencies = {
	"lua >= 5.2, < 5.4",
	"loop >= 3.0, < 4.0",
}
build = {
	type = "builtin",
	modules = {
		['loop.collection.ArrayedMap'] = "lua/loop/collection/ArrayedMap.lua",
		['loop.collection.ArrayedSet'] = "lua/loop/collection/ArrayedSet.lua",
		['loop.collection.BiCyclicSets'] = "lua/loop/collection/BiCyclicSets.lua",
		['loop.collection.CyclicSets'] = "lua/loop/collection/CyclicSets.lua",
		['loop.collection.LRUCache'] = "lua/loop/collection/LRUCache.lua",
		['loop.collection.OrderedSet'] = "lua/loop/collection/OrderedSet.lua",
		['loop.collection.Queue'] = "lua/loop/collection/Queue.lua",
		['loop.collection.SortedMap'] = "lua/loop/collection/SortedMap.lua",
		['loop.collection.UnorderedArray'] = "lua/loop/collection/UnorderedArray.lua",
	},
}

