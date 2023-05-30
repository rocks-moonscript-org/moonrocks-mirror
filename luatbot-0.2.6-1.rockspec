package = 'luatbot'
version = '0.2.6-1'

source = {
	url = 'git+https://github.com/koonix/luatbot.git',
	tag = 'v' .. version:match('^(.-)-'),
}

description = {
	homepage = 'https://github.com/koonix/luatbot',
	license = 'Unlicense',
}

dependencies = {
	'telegram-bot-lua',
	'penlight',
}

build = {
	type = 'builtin',
	modules = {
		['luatbot'] = 'src/main.lua',
		['luatbot.util'] = 'src/util.lua',
	}
}
