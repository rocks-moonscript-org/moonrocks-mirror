package = "dickens7-snowflake"
version = "1.0-1"

source = {
	url = "git://github.com/dickens7/lua-snowflake.git",
	tag = "v1.0",
}

description = {
	summary = "An implementation of a distributed ID generator, similar to Snowflake by Twitter",
	homepage = "http://github.com/dickens7/lua-snowflake",
	license = "MIT",
	maintainer = "Stuart Carnie",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",

    modules = {
        ["dickens7-snowflake"] = {
            sources = { "src/main.c" }
        }
    },
}
