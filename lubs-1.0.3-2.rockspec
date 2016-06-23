package = 'lubs'
version = '1.0.3-2'

source = {
	url = 'git://github.com/luveti/lubs',
	tag = '1.0.3'
}

description = {
	summary = 'Lua Build System (similar to gulp)',
	homepage = 'https://github.com/luveti/lubs',
	license = 'MIT'
}

dependencies = {
	'lua-path',
	'luv'
}

build = {
	type = 'builtin',
	modules = {
		['lubs'] = 'lubs/init.lua',
		['lubs.task'] = 'lubs/task.lua',
		['lubs.src'] = 'lubs/src.lua',
		['lubs.dest'] = 'lubs/dest.lua',
		['lubs.watch'] = 'lubs/watch.lua',
		['lubs.utils'] = 'lubs/utils.lua',
	},
	install = {
		bin = { 'bin/lubs' }
	}
}
