package = 'uname'
version = '1.0-1'
source = {
	url = 'git://github.com/lua-programming/uname.git',
	branch = 'master'
}
description = {
	summary = 'Uname v'..version..' by Otgo',
	detailed = 'Gets distribution information.',
	homepage = 'https://github.com/lua-programming/uname',
	license = 'MIT/X11'
}
dependencies = {
	'lua >= 5.1'
}
build = {
	type = 'builtin',
	modules = {
		uname = {
			sources = {'src/uname.c'},
			libraries = {'m'}
		}
	},
	copy_directories = {'examples'}
}
