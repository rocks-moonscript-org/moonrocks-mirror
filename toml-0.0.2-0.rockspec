package = "toml"
version = "0.0.2-0"

local v = version:gsub("%-%d", "")

source = {
	url = "git://github.com/LebJe/toml.lua.git",
	tag = v,
}

description = {
	summary = "TOML parser and serializer for Lua. Powered by toml++.",
	detailed = "toml.lua is a Lua wrapper around [toml++](https://github.com/marzer/tomlplusplus/), allowing you to parse and serialize TOML files in Lua.",
	license = "MIT",
	homepage = "https://github.com/LebJe/toml.lua",
	--issues_url = "https://github.com/LebJe/toml.lua/issues",
	maintainer = "LebJe <51171427+LebJe@users.noreply.github.com>",
	--labels = { "toml", "parser", "serializer" },
}

dependencies = { "lua >= 5.3" }

build = {
	type = "cmake",
	variables = {
		CMAKE_INSTALL_PREFIX = "$(PREFIX)",
		LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
		TOML_LUA_VERSION = v,
	},
}
