package = "libssh"
version = "0.1-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/libssh/raw/e060a77f0743a290cf0ac8a9bdd629ecdb29cadd/libssh-0.1-1.tar.gz",
}
description = {
	summary = "libssh luajit binding.",
	detailed = [[
		"libssh" binding for luajit
		https://github.com/narirou/jconv
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
