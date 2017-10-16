package = "libssh"
version = "0.3-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/libssh/raw/14f6cc2ce7c7a8ece9a693f0e4ca25e093f21fc5/libssh-0.3-1.tar.gz",
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
