rockspec_format = "3.0"
package = "shlex-lpeg"
version = "0.0.1-2"

description = {
	summary = "shlex/shellword in lpeg",
	license = "MIT",
	homepage = "https://github.com/phanen/shlex-lpeg",
	maintainer = "https://github.com/phanen",
	labels = {
		"shlex",
		"lpeg",
		"shellword",
		"split",
		"quote",
	},
}

dependencies = {
	"lua>=5.1",
	"lpeg==1.1.0",
}

source = {
	url = "https://github.com/phanen/shlex-lpeg/archive/refs/tags/v0.0.1.zip",
}

build = {
	type = "builtin",
}
