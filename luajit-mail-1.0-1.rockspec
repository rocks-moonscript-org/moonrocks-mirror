package = "luajit-mail"
version = "1.0-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-mail/raw/15ce79cd5353bbf01eb74f25bc2a224447e0c9f6/luajit-mail-1.0-1.tar.gz",
}
description = {
	summary = "An lua-resty-mail fork.",
	detailed = [[
		"lua-resty-mail" fork
		https://github.com/GUI/lua-resty-mail
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luajit-mail",
	license = "MIT/X11"
}
dependencies = {
	"luajit-curl = 1.1-0",
	"luasocket = 3.0rc1-2",
	"luasec = 1.0.2-1",
}
build = {
	type = "builtin",
	modules = {
		["luajit-mail"] = "./luajit-mail.lua",
		["luajit-mail.curl"] = "./luajit-mail/curl.lua",
		["luajit-mail.headers"] = "./luajit-mail/headers.lua",
		["luajit-mail.message"] = "./luajit-mail/message.lua",
		["luajit-mail.ngx_wrapper"] = "./luajit-mail/ngx_wrapper.lua",
		["luajit-mail.resty_wrapper"] = "./luajit-mail/resty_wrapper.lua",
		["luajit-mail.rfc2822_date"] = "./luajit-mail/rfc2822_date.lua",
		["luajit-mail.smtp"] = "./luajit-mail/smtp.lua",
	},
}
