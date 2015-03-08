package = "knxclient"
version = "0.0-435"
description = {
	summary = "A library which provides the means to communicate with several KNX-related devices or services.",
	license = "GPL2",
	homepage = "https://github.com/vapourismo/knxclient-lua"
}

source = {
	url = "git://github.com/vapourismo/knxclient-lua"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		knxclient = {
			sources = {"src/knxclient.c", "src/tunnel.c", "src/router.c", "src/tpdu.c"},
			libraries = {"knxclient"}
		}
	}
}
