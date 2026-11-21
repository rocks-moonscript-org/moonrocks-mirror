local ldeVersion = "0.11.3"

package = "lde"
version = ldeVersion .. "-0"

source = {
	url = "https://github.com/lde-org/lde/archive/refs/heads/master.tar.gz",
	dir = "lde-master",
}

description = {
	summary = "A package manager, test runner and runtime for Lua, written in Lua.",
	homepage = "https://lde.sh",
	license = "MIT",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "command",
	install_command = "sh install.sh --nightly",
	platforms = {
		windows = {
			install_command = "powershell -NoProfile -ExecutionPolicy Bypass -File install.ps1 --nightly",
		},
	},
}
