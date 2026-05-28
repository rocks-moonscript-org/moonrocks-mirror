rockspec_format = "3.0"
package = "astro"
version = "0.1.0-1"

description = {
	summary = "Lua library about tables, strings, vectors and more.",
	license = "MIT",
	maintainer = "Engine_Machiner",
	labels = {
		"datastructure",
		"debug",
		"math",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://github.com/EngineMachiner/Astro",
	tag = "1ca161eef71f15935d8f7d68209307b75bd67f02",
}

build = {
	type = "builtin",
}
