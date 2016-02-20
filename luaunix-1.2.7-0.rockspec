package = "luaunix"
version = "1.2.7-0"
source = {
	url = "http://github.com/mbalmer/luaunix/archive/1.2.7.zip";
	dir = "luaunix-1.2.7";
}
description = {
	summary = "Unix bindings for Lua",
	homepage = "http://github.com/arcapos/luaunix",
	license = "3-clause BSD",
}
dependencies = {
	"lua >= 5.1, < 5.4"
}
external_dependencies = {
	platforms = {
		linux = {
			BSD = {
				header = "bsd/bsd.h",
				library = "bsd"
			}
		}
	}
}
build = {
	type = "builtin",
	modules = {
		unix = {
			sources = {"luaunix.c", "select.c", "pwd.c"}
		}
	},
	platforms = {
		linux = {
			modules = {
				unix = {
					libraries = {"bsd", "crypt"},
					incdirs = {"$(BSD_INCDIR)"},
					libdirs = {"$(BSD_LIBDIR)"}
				}
			}
		}
	}
}
