local git_ref = "0.1.4"
local modrev = "0.1.4"
local specrev = "1"

local repo_url = "https://codeberg.org/ambaradan/nvim-mkdocs-material"

rockspec_format = "3.0"
package = "nvim-mkdocs-material"
version = modrev .. "-" .. specrev

description = {
	summary = "A Neovim plugin for managing MkDocs projects with support for Python virtual environments and custom themes.",
	detailed = "nvim-mkdocs-material is a Neovim plugin designed to simplify the creation, management, and publishing of documentation by using MkDocs and the Material for MkDocs theme. This plugin is ideal for developers, technical writers, and anyone looking to create elegant and professional documentation directly from the Neovim development environment.",
	labels = { "neovim" },
	homepage = "https://codeberg.org/ambaradan/nvim-mkdocs-material",
	license = "MIT",
}

dependencies = { "lua >= 5.1", "plenary.nvim" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "nvim-mkdocs-material",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "doc" },
}
