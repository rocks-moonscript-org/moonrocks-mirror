package = "libssh"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/libssh/raw/ff3b16a0094488139204745a339d61e2f89798fd/libssh-0.1-0.tar.gz",
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
