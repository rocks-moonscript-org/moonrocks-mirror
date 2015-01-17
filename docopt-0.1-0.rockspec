package = 'docopt'
version = '0.1-0'
source = {
	url = 'git://github.com/JakubTesarek/docopt.lua.git',
	tag = 'v0.1-0'
}
description = {
	summary = 'Docopt.lua creates beautiful command-line interfaces',
	detailed = 'Docopt automaticaly resolves arguments given to your application from command-line.',
	homepage = 'https://github.com/JakubTesarek/docopt.lua',
	license = 'MIT'
}
dependencies = {
   'lua ~> 5.1'
}
build = {
	type = 'builtin',
	modules = {
		['docopt']     = 'src/docopt.lua'
   }
}