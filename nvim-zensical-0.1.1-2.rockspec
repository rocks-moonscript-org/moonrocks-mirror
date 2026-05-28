local git_ref = "0.1.1"
local modrev = "0.1.1"
local specrev = "2"

local repo_url = "https://framagit.org/ambaradan/nvim-zensical"

rockspec_format = "3.0"
package = "nvim-zensical"
version = modrev .. "-" .. specrev

description = {
	summary = "nvim-zensical provides a streamlined interface for managing Zensical servers directly within Neovim.",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://framagit.org/ambaradan/nvim-zensical",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/-/archive/" .. git_ref .. "/nvim-zensical-" .. git_ref .. ".zip",
	dir = "nvim-zensical-" .. git_ref,
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
