package = "tokyocabinet"
version = "1.10-1"
source = {
	url = "http://fallabs.com/tokyocabinet/luapkg/tokyocabinet-lua-1.10.tar.gz";
	dir = "tokyocabinet-lua-1.10";
	md5 = "e5f0b19ed2f559899edb804054552c40";
}
description = {
	summary = "Lua Binding of Tokyo Cabinet";
	homepage = "http://fallabs.com/tokyocabinet/luadoc/";
	license = "LGPL 2.1";
}
dependencies = {}
external_dependencies = {
	TOKYOCABINET = {
		header = "tcutil.h";
		library = "tokyocabinet";
	};
}
build = {
	type = "builtin";
	modules = {
		tokyocabinet = {
			sources = "tokyocabinet.c";
			libraries = {
				"tokyocabinet";
				"m";
			};
			incdirs = {
				"$(TOKYOCABINET_INCDIR)";
			};
			libdirs = {
				"$(TOKYOCABINET_LIBDIR)";
			};
		};
	};
	patches = {
		["rawlen.diff"] = [[
--- a/tokyocabinet.c
+++ b/tokyocabinet.c
@@ -18,6 +18,10 @@
 #include "lualib.h"
 #include "lauxlib.h"

+#if LUA_VERSION_NUM >= 502
+#define lua_objlen lua_rawlen
+#endif
+
 #include <tcutil.h>
 #include <tchdb.h>
 #include <tcbdb.h>
]];
	};
}
