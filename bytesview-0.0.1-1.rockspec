rockspec_format = "3.1"
package = "bytesview"
version = "0.0.1-1"

description = {
	summary = "Utilities around the bytesview protocols, for module-agnostic buffers",
	license = "MPL-2.0",
	maintainer = "Taylor Richberger",
	labels = {
		"protocol",
		"api",
		"utility",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://forge.axfive.net/Taylor/axfive.net.git",
	tag = "v0.0.1",
}

build = {
	type = "builtin",
	modules = {
		bytesview = {
			"src/bytesview.c",
		},
	},
}
