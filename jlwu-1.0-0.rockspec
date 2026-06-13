package = "jlWU"
version = "1.0-0"

source = {
	url = "git+https://github.com/RixInGithub/jlWU"
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
	},
	before = "git submodule update --init --recursive"
}