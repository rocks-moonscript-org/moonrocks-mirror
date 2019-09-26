package = "libssh"
version = "0.2-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/libssh/raw/dd541d9491961a3bca2a868f9f0c25526186378e/libssh-0.2-0.tar.gz",
}
description = {
	summary = "libssh luajit binding.",
	detailed = [[
		"libssh" binding for luajit
		https://www.libssh.org/
	]],
	homepage = "https://bitbucket.org/senanetworksinc/libssh",
	license = "MIT/X11"
}
dependencies = {
	"bit32",
	"penlight"
}
build = {
	type = "builtin",
	modules = {
		["libssh.libssh"] = "libssh/libssh.lua",
		["libssh.sftp"] = "libssh/sftp.lua",
		["libssh.types"] = "libssh/types.lua",
	},
}
