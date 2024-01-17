package = 'lua-vosk'
version = '1.3-3'

source = {
	url = 'git+https://github.com/igor725/lua-vosk',
	tag = 'v1.3-3'
}

description = {
	summary = 'Vosk binding for Lua.',
	detailed = [[
		Vosk is an offline open source speech recognition toolkit.
		It enables speech recognition for 20+ languages and dialects -
		English, Indian English, German, French, Spanish, Portuguese,
		Chinese, Russian, Turkish, Vietnamese, Italian, Dutch, Catalan,
		Arabic, Greek, Farsi, Filipino, Ukrainian, Kazakh, Swedish,
		Japanese, Esperanto, Hindi, Czech, Polish.

		This library implements easy to use interface for Vosk API.
	]],
	homepage = 'https://github.com/igor725/lua-vosk',
	license = 'MIT'
}

dependencies = {
	'lua >= 5.1'
}

build = {
	type = 'builtin',
	modules = {
		luavosk = {
			sources = {
				'src/luamodel.c', 'src/luarecognizer.c',
				'src/luaspkmodel.c', 'src/main.c',
				'src/voskbridge.c'
			},
			defines = {
				'VOSK_ENABLE_JSON'
			}
		}
	}
}
