local git_ref = "0.1.0"
local modrev = "0.1.0"
local specrev = "1"

local repo_url = "https://framagit.org/ambaradan/nvim-vale-tools"

rockspec_format = "3.0"
package = "nvim-vale-tools"
version = modrev .. "-" .. specrev

description = {
	summary = "",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://framagit.org/ambaradan/nvim-vale-tools",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/-/archive/" .. git_ref .. "/nvim-vale-tools-" .. git_ref .. ".zip",
	dir = "nvim-vale-tools-" .. git_ref,
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
