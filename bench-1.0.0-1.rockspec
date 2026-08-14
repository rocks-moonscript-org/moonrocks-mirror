rockspec_format = "3.0"
package = "bench"
version = "1.0.0-1"

description = {
	summary = "A simple lua benchmarking module with no dependencies",
	license = "MPL-2.0",
	homepage = "https://forge.axfive.net/Taylor/lua-bench",
	maintainer = "Taylor Richberger",
	labels = {
		"benchmark",
		"utility",
		"profiling",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://forge.axfive.net/Taylor/lua-bench.git",
	tag = "v1.0.0",
}

build = {
	type = "builtin",
}
