package = 'amqp-client-52plus'
version = '1.4.0-1'

source = {
	url = 'git+https://github.com/gsdenys/amqp-client.git',
	branch = 'v1.4.0-1'
}

description = {
	summary = 'amqp-client + dependencies for Lua 5.2+',
	homepage = 'https://github.com/gsdenys/amqp-client',
	license = 'Apache 2.0',
	detailed = [[
		gsdenys/amqp-client with LuaBitOp-53plus added as a dependency for Lua 5.2+ operation
	]],
}

dependencies = {
	'lua >= 5.1',
	'luabitop-53plus',
}

build = {
	type = 'builtin',
	modules = {
		['amqp'] = 'src/amqp/init.lua',
		['amqp.buffer'] = 'src/amqp/buffer.lua',
		['amqp.consts'] = 'src/amqp/consts.lua',
		['amqp.frame'] = 'src/amqp/frame.lua',
		['amqp.logger'] = 'src/amqp/logger.lua',
	},
}
