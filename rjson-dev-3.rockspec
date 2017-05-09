package = "rjson"
version = "dev-3"
source = {
   url = "git://github.com/Romaboy/rjson.git"
}
description = {
   summary = "Another lua<->json realization",
   homepage = "https://github.com/Romaboy/rjson",
   license = "MIT",
   maintainer = "Roman Kushin <romadzao@gmail.com>"
}
dependencies = {
	"lua ~> 5.1"
}
build = {
	type = "make",
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LUA_INCDIR="$(LUA_INCDIR)"
	},
	install_variables = {
		LUA_LIBDIR="$(LUA_LIBDIR)"
	},
}
