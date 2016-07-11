package = 'otouto-test'
version = '3.11-11'

source = {
	url = 'https://github.com/topkecleon/otouto'
}

description = {
	summary = 'The plugin-wielding, multipurpose Telegram bot!',
	detailed = 'A plugin-wielding, multipurpose bot for the Telegram API.',
	homepage = 'http://otou.to',
	maintainer = 'Drew <drew@otou.to>',
	license = 'AGPL-3'
}

dependencies = {
	'lua >= 5.2',
	'luasocket == 3.0rc1-2',
	'luasec >= 0.6',
	'dkjson >= 2.5',
	'lpeg >= 1.0'
}

build = {
	type = "command",
	install_command = "cd ~ && git clone https://github.com/topkecleon/otouto.git"
}
