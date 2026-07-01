rockspec_format = "3.0"
package = "cycle-cache"
version = "1.0.1-2"

description = {
	summary = "A cycle cache for Lua",
	detailed = [[
A cycle-based cache for Lua.

The type maintains a cycle-count of caches, and on fetching, refreshes the
newest cache with the value if it matches. When you cycle the cache, it
rotates the caches, dropping the oldest.

Also includes functionality for a GC-based auto-cycling cache, which
cycles the cache roughly every GC collection.
]],
	license = "MPL-2.0",
	homepage = "https://forge.axfive.net/Taylor/cycle-cache",
	issues_url = "https://forge.axfive.net/Taylor/cycle-cache/issues",
	maintainer = "Taylor Richberger <taylor@axfive.net>",
	labels = {
		"utility",
		"cache",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://forge.axfive.net/Taylor/cycle-cache.git",
	tag = "v1.0.1",
}

build = {
	type = "builtin",
}
