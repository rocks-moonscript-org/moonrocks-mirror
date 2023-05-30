package = 'lua-vosk'
version = '1.1-1'

source = {
	url = 'git+https://github.com/igor725/lua-vosk',
	tag = 'v1.1'
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
		vosk = {
			sources = {
				'src/luahelp.c', 'src/luamodel.c',
				'src/luarecognizer.c', 'src/luaspkmodel.c',
				'src/main.c', 'src/voskbridge.c'
			},
			platforms = {
				win32 = {
					modules = { vosk = { defines = {
						-- 'LUAVOSK_DEBUG'
					}}}
				}
			}
		}
	}
}
