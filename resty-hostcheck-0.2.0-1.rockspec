package = "resty-hostcheck"
version = "0.2.0-1"
source = {
	url = "git://github.com/niiknow/resty-hostcheck.git",
	tag = "v0.2.0"
}
description = {
	summary = "Host validation for openresty",
	homepage = "https://niiknow.github.io/resty-hostcheck",
	maintainer = "Tom Noogen <friends@niiknow.org>",
	license = "MIT"
}
dependencies = {
	"lua-resty-dns",
	"lua-resty-lrucache"
}
build = {
	type = "builtin",
	modules = {
		["resty.hostcheck"] = "lib/resty/hostcheck.lua",
		["resty.hostcheck.dns"] = "lib/resty/hostcheck/dns.lua",
		["resty.hostcheck.version"] = "lib/resty/hostcheck/version.lua"
	}
}
