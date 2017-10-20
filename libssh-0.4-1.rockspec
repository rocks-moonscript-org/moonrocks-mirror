package = "libssh"
version = "0.4-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/libssh/raw/3d978f22d325f86495c6138a6e7e5877973aad8f/libssh-0.4-1.tar.gz",
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
