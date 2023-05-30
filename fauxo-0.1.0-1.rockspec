package = 'fauxo'
version = '0.1.0-1'

source = {
	url = 'git+https://github.com/koonix/lua-fauxo.git',
	tag = 'v' .. version:match('^(.-)-'),
}

description = {
	homepage = 'https://github.com/koonix/lua-fauxo',
	license = 'MIT',
}

dependencies = {
	'penlight',
}

build = {
	type = 'builtin',
	modules = {
		['fauxo'] = 'src/main.lua',
	}
}
