local package_name = "luaexpat"
local package_version = "1.5.2"
local rockspec_revision = "1"
local github_account_name = "lunarmodules"
local github_repo_name = package_name


package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
	url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
	branch = (package_version == "scm") and "master" or nil,
	tag = (package_version ~= "scm") and package_version or nil,
}

description = {
	summary = "XML Expat parsing",
	detailed = [[
		LuaExpat is a SAX (Simple API for XML) XML parser based on the
		Expat library.
	]],
	license = "MIT/X11",
	homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
}

dependencies = {
	"lua >= 5.1"
}

external_dependencies = {
	EXPAT = {
		header = "expat.h"
	}
}

build = {
	type = "builtin",
	modules = {
		lxp = {
			sources = { "src/lxplib.c" },
			libraries = { "expat" },
			incdirs = { "$(EXPAT_INCDIR)", "src/" },
			libdirs = { "$(EXPAT_LIBDIR)" },
		},
		["lxp.lom"] = "src/lxp/lom.lua",
		["lxp.totable"] = "src/lxp/totable.lua",
		["lxp.threat"] = "src/lxp/threat.lua",
	},
	copy_directories = { "docs" }
}
