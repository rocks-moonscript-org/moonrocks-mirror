package = "chandra-toml"
version = "2.1-1"
source = {
	url = "git+https://codeberg.org/veer66/chandra-toml.git",
	tag = "v2.1.1",
}
description = {
	summary = "toml decoder/encoder for Lua (lua-toml fork)",
	detailed = [[
TOML 0.4.0 compliant Lua library with tests. Serializes TOML into a Lua table, and serlaizes Lua tables into TOML.]],
	homepage = "https://codeberg.org/veer66/chandra-toml",
	license = "MIT",
}
dependencies = {
	"lua >= 5.4"
}
build = {
	type = "builtin",
	modules = {
		toml = "toml.lua",
	},
	copy_directories = {"spec"},
}
