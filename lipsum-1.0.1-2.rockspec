rockspec_format = "3.0"
package = "lipsum"
version = "1.0.1-2"

description = {
	summary = "Lorem Ipsum generator",
	detailed = "Lorem Ipsum generator in Lua, with multiple options for generating specific shapes of text",
	license = "MPL-2.0",
	maintainer = "Taylor Richberger <taylor.richberger@procern.com>",
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://github.com/ProCern/lua-lipsum.git",
	tag = "v1.0.1",
}

build = {
	type = "builtin",
}
