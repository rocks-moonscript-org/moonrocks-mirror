package = "miniblooms"
version = "0.5-1"
source = {
	url = "https://github.com/bitdivine/miniblooms"
}
description = {
	summary = "Small, fast bloom filters",
	detailed = [[
		This is a small, fast implementation of bloom
		filters that takes cache performance into account.
	]],
	homepage = "https://github.com/bitdivine/minibloom",
	license = "MIT"
}
dependencies = {
	"lua ~> 5.1"
}
build = {
	type = "make",
	install_pass = false,
}
