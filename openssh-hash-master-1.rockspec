rockspec_format = "3.0"
package = "openssh-hash"
version = "master-1"
source = {
	url = "git+https://codeberg.org/nazrin/openssh-hash"
}
description = {
	summary = "Simple FFI binding to OpenSSH hashes, MD5, SHA256, SHA224, SHA512, etc",
	homepage = "https://codeberg.org/nazrin/openssh-hash",
	license = "MPL-v2",
	issues_url = "https://codeberg.org/nazrin/openssh-hash/issues"
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	install = {
		lua = {
			["openssh-hash"] = "./openssh-hash.lua",
		}
	},
}

