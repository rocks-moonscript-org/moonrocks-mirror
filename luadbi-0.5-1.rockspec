package = "luadbi"
version = "0.5-1"

description = {
	summary = "Database abstraction layer",
	detailed = [[
		LuaDBI is a database interface library for Lua. It is designed 
		to provide a RDBMS agnostic API for handling database 
		operations. LuaDBI also provides support for prepared statement 
		handles, placeholders and bind parameters for all database 
		operations.
		
		This rock is the front end DBI module. You will need one or 
		more backend DBD drivers to use this software.
	]],
	
	license = "MIT/X11",
	homepage = "http://luadbi.googlecode.com/"
}

source = {
	url = "http://syn.zadzmo.org/projects/luadbi/luadbi-0.5-1.tar.gz",
	dir = "luadbi-0.5-1"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		["DBI"] = "DBI.lua"
	}
}
