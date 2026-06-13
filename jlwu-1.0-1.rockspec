rockspec_format = "3.0"
package = "jlWU"
version = "1.0-1"

dependencies = {
	"lua >= 5.1"
}

build_dependencies = {
	"luarocks-fetch-gitrec"
}

source = {
	url = "gitrec+https://github.com/RixInGithub/jlWU.git"
}

description = {
	homepage = "https://github.com/RixInGithub/jlWU",
	license = "AGPL-v3.0"
}

build = {
	type = "builtin",
	modules = {
		jlWU = {
			sources = {"src/jlWU.c", "jorkdir/jorkdir.c"},
			incdirs = {"."}
		}
	}
}