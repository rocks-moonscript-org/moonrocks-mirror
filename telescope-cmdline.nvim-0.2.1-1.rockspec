local git_ref = "0.2.1"
local modrev = "0.2.1"
local specrev = "1"

local repo_url = "https://github.com/jonarrien/telescope-cmdline.nvim"

rockspec_format = "3.0"
package = "telescope-cmdline.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "Telescope extension to use command line",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/jonarrien/telescope-cmdline.nvim",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "telescope-cmdline.nvim-" .. "0.2.1",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = {},
}
