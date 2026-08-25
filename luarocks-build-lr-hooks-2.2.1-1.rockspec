package = 'luarocks-build-lr-hooks'
version = '2.2.1-1'
source = {
	url = 'https://codeberg.org/leso-kn/lr-hooks/archive/v2.2.1.zip',
	dir = 'lr-hooks'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/lr-hooks',
	license = 'MIT'
}
build = {
	type = 'command',
	install_command = '$(LUA) install.lua \"$(LUADIR)\" \"$(LIBDIR)\"'
}
