package = "libssh2"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/libssh2/raw/1d087b7dbe649aa90826266c15719b600126500d/libssh2-0.1-0.tar.gz",
}
description = {
	summary = "libssh2",
	detailed = [[
		[libssh2](https://www.libssh2.org/) ffi library.
	]],
	homepage = "https://bitbucket.org/senanetworksinc/libssh2",
	license = "MIT/X11"
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["libssh2.agent"] = "libssh2/agent.lua",
		["libssh2.base64"] = "libssh2/base64.lua",
		["libssh2.channel"] = "libssh2/channel.lua",
		["libssh2.hostkey"] = "libssh2/hostkey.lua",
		["libssh2.keeplive"] = "libssh2/keeplive.lua",
		["libssh2.knownhost"] = "libssh2/knownhost.lua",
		["libssh2.libssh2"] = "libssh2/libssh2.lua",
		["libssh2.prototype"] = "libssh2/prototype.lua",
		["libssh2.publickey"] = "libssh2/publickey.lua",
		["libssh2.scp"] = "libssh2/scp.lua",
		["libssh2.session"] = "libssh2/session.lua",
		["libssh2.sftp"] = "libssh2/sftp.lua",
		["libssh2.trace"] = "libssh2/trace.lua",
		["libssh2.userauth"] = "libssh2/userauth.lua",
	},
}
