package = "htlua"
version = "0.3-1"
source = {
	url = "git+https://gitlab.com/benrob0329/htlua",
	tag = "master",
}

description = {
	summary = "HTML Generation Library",
	detailed = [[
		A POC HTML General Library abusing metatables and anonymous functions. Will be matured over time.
	]],
	homepage = "https://gitlab.com/benrob0329/htlua",
	license = "CC0",
}

dependencies = {
	"lua >= 5.4",
	"lambda >= 1.1",
}

build = {
	type = "builtin",
	modules = {
		htlua = "htlua.lua"
	}
}
