rockspec_format = "3.0"
package = "sif"
version = "master-1"
source = {
	url = "git+https://codeberg.org/nazrin/sif"
}
description = {
	summary = "Small Table Loader Sif. Tabs (\t) and newlines (\n) encode tables",
	homepage = "https://codeberg.org/nazrin/sif",
	license = "MPL-v2",
	issues_url = "https://codeberg.org/nazrin/sif/issues"
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	install = {
		lua = {
			["sif"] = "./sif.lua",
		}
	},
}

