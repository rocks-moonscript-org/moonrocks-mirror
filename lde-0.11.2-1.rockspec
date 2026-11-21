local ldeVersion = "0.11.2"

package = "lde"
version = ldeVersion .. "-1"

source = {
	url = "https://github.com/lde-org/lde/archive/refs/tags/v0.11.2.tar.gz",
	dir = "lde-0.11.2",
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
	install_command = "sh install.sh --version 0.11.2",
	platforms = {
		windows = {
			install_command = "powershell -NoProfile -ExecutionPolicy Bypass -File install.ps1 --version 0.11.2",
		},
	},
}
