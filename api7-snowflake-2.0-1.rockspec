package = "api7-snowflake"
version = "2.0-1"

source = {
	url = "git://github.com/api7/lua-snowflake.git",
	tag = "v2.0",
}

description = {
	summary = "An implementation of a distributed ID generator, similar to Snowflake by Twitter",
	homepage = "http://github.com/api7/lua-snowflake",
	license = "MIT",
	maintainer = "dickens7",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
    modules = {
        ["snowflake"] = {
            sources = { "src/main.c" }
        }
    },
}
