package = "lsocket"
version = "1.0-1"
source = {
	url = "http://www.tset.de/downloads/lsocket-1.0-1.tar.gz"
}
description = {
	summary = "simple and easy socket support for lua.",
	detailed = [[
		lsocket is a library to provide socket programming support for
		lua. It is not intended to be a complete socket api, but easy to
		use and good enough for most tasks. Both IPv4 and IPv6 are
		supported, as are tcp and udp, and also IPv4 broadcasts and
		IPv6 multicasts.
	]],
	homepage = "http://www.tset.de/lsocket/",
	license = "MIT/X11",
	maintainer = "Gunnar Zötl <gz@tset.de>"
}
supported_platforms = {
	"unix", "mac"
}
dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		lsocket = {
			sources = { "lsocket.c" },
		},
	},
	copy_directories = { 'doc', 'samples' },
}

