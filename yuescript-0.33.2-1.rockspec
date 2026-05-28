rockspec_format = '3.0'
package = 'Yuescript'
version = '0.33.2-1'
source = {
	url = 'file:///Users/runner/work/_temp/yuescript_pack_0.33.2/yuescript-0.33.2.tar.gz'
}
description = {
	summary = 'Yuescript is a Moonscript dialect.',
	detailed = [[
	Yuescript is a Moonscript dialect. It is derived from Moonscript language 0.5.0 and continuously adopting new features to be more up to date. ]],
	homepage = 'https://github.com/IppClub/YueScript',
	maintainer = 'Li Jin <dragon-fly@qq.com>',
	labels = {'yuescript','cpp','transpiler','moonscript'},
	license = 'MIT'
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'cmake',
	variables = {
		LUA = '$(LUA)',
		LUA_INCDIR = '$(LUA_INCDIR)',
		CMAKE_BUILD_TYPE='Release'
	},
	install = {
		lib = {
			'build.luarocks/yue.so'
		},
		bin = {
			'build.luarocks/yue'
		}
	},
	platforms = {
		windows = {
			install = {
				lib = {
					'build.luarocks/Release/yue.dll'
				},
				bin = {
					'build.luarocks/Release/yue.exe'
				}
			}
		}
	}
}