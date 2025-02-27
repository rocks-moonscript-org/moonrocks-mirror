local git_ref = "1.4"
local modrev = "1.4"
local specrev = "1"

local repo_url = "https://github.com/2KAbhishek/nerdy.nvim"

rockspec_format = "3.0"
package = "nerdy.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "A super handy plugin that lets you search, preview and insert all nerd font glyphs straight from neovim",
	detailed = [[
]],
	labels = { "neovim", "nvim", "plugin" },
	homepage = "https://github.com/2KAbhishek/nerdy.nvim",
	license = "GPL/3.0",
}

dependencies = { "lua >= 5.1", "telescope.nvim" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "nerdy.nvim-" .. "1.4",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "doc", "plugin", "scripts" },
}
