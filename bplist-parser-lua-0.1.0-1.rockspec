rockspec_format = "3.0"
package = "bplist-parser-lua"
version = "0.1.0-1"

description = {
	summary = "Parse bplist",
	license = "MIT",
	maintainer = "Leon Si",
	labels = {
		"bplist",
		"plist",
	},
}

dependencies = {
	"lua>=5.3",
	"busted>=2.0",
}

source = {
	url = "https://github.com/leonsilicon/bplist-parser-lua",
}

build = {
	type = "builtin",
}
