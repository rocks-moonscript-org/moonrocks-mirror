package = "lua-ahocorasick"
version = "scm-0"
source = {
	url = "git://github.com/chatid/lua-ahocorasick.git"
}
description = {
	summary = "This is a lua binding to MultiFast[1], which is used for quickly and efficiently searching text for multiple strings." ;
	license = "MIT" ;
}
dependencies = {
	"lua >= 5.1"
}
external_dependencies = {
	ahocorasick = {
		header = "ahocorasick/ahocorasick.h"
	}
}
build = {
	type = "builtin" ;
	modules = {
		[package] = {
			sources = { "src/lahocorasick.c" } ;
			libraries = { "ahocorasick" } ;
			incdirs = { "$(AHOCORASICK_INCDIR)" } ;
		} ;
	} ;
}
