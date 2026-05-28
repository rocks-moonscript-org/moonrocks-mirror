local git_ref = '0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/lua-git2-temp'

rockspec_format = '3.0'
package = 'lua-git2-temp'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/libgit2/luagit2"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = 'Lua bindings for libgit2',
  detailed = '',
  labels = { },
  homepage = 'http://libgit2.github.com',
  license = 'MIT'
}

dependencies = {}

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-git2-temp-' .. '0.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

external_dependencies = {
	GIT2 = {
		header = "git2.h",
		library = "git2",
	}
}
build	= {
	type = "builtin",
	modules = {
		git2 = {
			sources = { "src/pre_generated-git2.nobj.c" },
			libraries = { "git2" },
			incdirs = { "$(GIT2_INCDIR)" },
			libdirs = { "$(GIT2_LIBDIR)" },
		}
	}
}
