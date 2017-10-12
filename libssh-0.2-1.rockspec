package = "libssh"
version = "0.2-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/libssh/raw/2007da8fa1e8eb65e20b5f22ebf81013a70d7fc6/libssh-0.2-1.tar.gz",
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
