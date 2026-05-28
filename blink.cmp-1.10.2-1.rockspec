local git_ref = "v1.10.2"
local modrev = "1.10.2"
local specrev = "1"

local repo_url = "https://github.com/Saghen/blink.cmp"

rockspec_format = "3.0"
package = "blink.cmp"
version = modrev .. "-" .. specrev

description = {
	summary = "Performant, batteries-included completion plugin for Neovim",
	detailed = "blink.cmp is a completion plugin with support for LSPs, cmdline, signature help, and snippets. It uses an optional custom fuzzy matcher for typo resistance. It provides extensibility via pluggable sources (LSP, buffer, snippets, etc), component based rendering and dynamic configuration.",
	labels = { "neovim" },
	homepage = "https://github.com/Saghen/blink.cmp",
	license = "MIT",
}

dependencies = { "lua >= 5.1", "friendly-snippets" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "blink.cmp-" .. "1.10.2",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "doc", "plugin" },
}
