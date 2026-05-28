local git_ref = "0.1.2"
local modrev = "0.1.2"
local specrev = "2"

local repo_url = "https://framagit.org/ambaradan/nvim-rockydocs"

rockspec_format = "3.0"
package = "nvim-rockydocs"
version = modrev .. "-" .. specrev

description = {
	summary = "A Neovim plugin for creating and managing Rocky Linux documentation projects directly from Neovim.",
	detailed = "It provides integration for serving, building, and generating new projects with the official Rocky Linux theme, using uvx for temporary dependency execution.",
	labels = { "neovim" },
	homepage = "https://framagit.org/ambaradan/nvim-rockydocs",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/-/archive/" .. git_ref .. "/nvim-rockydocs-" .. git_ref .. ".zip",
	dir = "nvim-rockydocs-" .. git_ref,
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
