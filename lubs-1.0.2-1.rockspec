package = 'lubs'
version = '1.0.2-1'

source = {
	url = 'git://github.com/luveti/lubs',
	tag = '1.0.2'
}

description = {
	summary = 'Lua Build System (similar to gulp)',
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
