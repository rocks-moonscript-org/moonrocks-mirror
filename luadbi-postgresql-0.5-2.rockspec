package = "luadbi-postgresql"
version = "0.5-2"

description = {
	summary = "Database abstraction layer",
	detailed = [[
		LuaDBI is a database interface library for Lua. It is designed 
		to provide a RDBMS agnostic API for handling database 
		operations. LuaDBI also provides support for prepared statement 
		handles, placeholders and bind parameters for all database 
		operations.
		
		This rock is the PostgreSQL DBD module. You will also need the
		base DBI module to use this software.
	]],
	
	license = "MIT/X11",
	homepage = "https://github.com/mwild1/luadbi"
}

source = {
	url = "https://zadzmo.org/code/luadbi/downloads/luadbi-postgresql-0.5-1.tar.gz",
	dir = "luadbi-postgresql-0.5-1"
}

dependencies = {
	"lua >= 5.1, < 5.2",
	"luadbi = 0.5"
}

external_dependencies = {
	POSTGRES = { header = "libpq-fe.h" }
}

build = {
	type = "builtin",
	modules = {
		['dbd.postgresql'] = {
			sources = {
				'dbd/common.c',
				'dbd/postgresql/main.c',
				'dbd/postgresql/statement.c',
				'dbd/postgresql/connection.c'
			},
		
			libraries = {
				'pq'
			},
			
			incdirs = {
				"$(POSTGRES_INCDIR)",
				'./'
			},
			
			libdirs = {
				"$(POSTGRES_LIBDIR)"
			}
		}
	}
}
