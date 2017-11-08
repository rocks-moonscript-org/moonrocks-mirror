package = "sqltable"

version = "1.4-1"

description = {
	summary = "Database-to-Lua Mapper",
	detailed = [[
		SqlTable makes database tables look as close as possible to
		ordinary Lua tables. SELECT, INSERT, UPDATE, and DELETE are all
		handled with metamethods in such a way that no SQL needs to be
		written in most cases. SqlTable also provides some other
		features such as connection pooling and easy ad-hoc query error
		handling.
	]],
	
	license = "MIT/X11",
	homepage = "https://zadzmo.org/code/sqltable"
}

source = {
	url = "https://zadzmo.org/code/sqltable/downloads/sqltable-1.4.tar.gz"
}

dependencies = {
	"lua >= 5.1, < 5.4", 
	"luadbi"
}

build = {
	type = "builtin",
	modules = {
		["sqltable"] = "sqltable.lua",
		["sqltable.pool"] = "sqltable/pool.lua",
		["sqltable.env"] = "sqltable/env.lua",
		["sqltable.table"] = "sqltable/table.lua",
		["sqltable.connection"] = "sqltable/connection.lua",
		["sqltable.drivers.PostgreSQL"] = "sqltable/drivers/PostgreSQL.lua",
		["sqltable.drivers.MySQL"] = "sqltable/drivers/MySQL.lua",
		["sqltable.drivers.SQLite3"] = "sqltable/drivers/SQLite3.lua"
	}
}
