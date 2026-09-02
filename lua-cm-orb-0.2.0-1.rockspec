package = 'lua-cm-orb'
version = '0.2.0-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/cm-orb',
	tag = 'v0.2.0'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/cm-orb',
	license = 'MIT'
}
dependencies = {
	'lua-cmsgpack ~> 0.4',
	'sfs ~> 0.2'
}
build = {
	type = 'builtin',
	modules = {
		['cm-orb.init'] = 'cm-orb/init.lua'
	}
}
