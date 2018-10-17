package = "resty-hostcheck"
version = "0.3.2-1"
source = {
	url = "git://github.com/niiknow/resty-hostcheck.git",
	tag = "0.3.2"
}
description = {
	summary = "Host validation for openresty",
	homepage = "https://github.com/niiknow/resty-hostcheck",
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
		["resty.hostcheck.dns"] = "lib/resty/hostcheck/dns.lua"
	}
}
