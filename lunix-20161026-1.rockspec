package = 'lunix'
version = '20161026-1'
source = {
	url = 'https://github.com/wahern/lunix/archive/rel-20161026.tar.gz',
	dir = "lunix-rel-20161026";
}
description = {
	summary = "Lua Unix Module.";
	homepage = "http://25thandclement.com/~william/projects/lunix.html";
	license = "MIT/X11";
}
supported_platforms = {
	"unix";
}
build = {
	type = "builtin";
	modules = {
		["unix"] = {
			sources = { "src/unix.c"; };
			defines = {
				"_REENTRANT";
				"_THREAD_SAFE";
				"_GNU_SOURCE";
			};
		};
	};
	platforms = {
		linux = {
			modules = {
				["unix"] = {
					libraries = {nil;
						-- glibc <= 2.17 needs to link with librt
						"rt";
					};
				};
			};
		};
		osx = {
			modules = {
				["unix"] = {
					defines = {nil, nil, nil;
						"__APPLE_USE_RFC_3542";
					};
				};
			};
		};
	};
}
