package = "Void"
version = "1.0-1"
source = {
   url= "git://github.com/wizgrav/lua-void.git",
	branch= "v1.0"
}
description = {
   summary = "Memory buffers that support typed accesing and cross thread transfer.",
   detailed = [[
   Void is a module for memory buffer manipulation that provides:
   
   * Proxy userdata(views) that point to slices of underlying buffers.
   * Buffers up to 2GB that can be accessed as signed or unsigned types.
   * Named shared queues that allow cross thread transfer of buffers.
   * Common operations like writing to/reading from files and sockets. 
   
   ]],
   homepage = "http://www.github.com/wizgrav/lua-void",
   license = "MIT/X11",
   maintainer="Yannis Gravezas <wizgrav@gmail.com>"
}

dependencies = {
   "lua >= 5.1"
}
build = {
	type = "builtin",
	platforms = {
		unix = {
			modules = {
				void = {
					 libraries = {"pthread"},
				}
			}
		},
		windows = {
			modules = {
				void = {
					 libraries = {"Ws2_32"},
				}
			}
		}
	},
	modules = {
		void = {
			 sources = {"src/void.c"},
		}
	}
}
