-- moonkind-0.1.1.rockspec
local package_name = "moonkind"
local package_version = "0.1.0"
local rockspec_revision = "1"
local github_account_name = "VicCAlq"
local github_repo_name = package_name
local git_checkout = package_version == "main" or package_version

rockspec_format = "3.0"
package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git+https://github.com/" .. github_account_name .. "/" .. github_repo_name .. ".git",
  branch = git_checkout,
}

supported_platforms = {
  "unix",
  "bsd",
  "solaris",
  "netbsd",
  "openbsd",
  "freebsd",
  "dragonfly",
  "linux",
  "macosx",
  "cygwin",
  "msys",
  "haiku",
  "windows",
  "win32",
  "mingw",
  "mingw32",
  "msys2_mingw_w64",
}
description = {
  summary = "Simple type assertions for your Lua projeccts",
  homepage = "https://" .. github_account_name .. ".github.io/" .. github_repo_name,
  issues_url = "https://" .. github_account_name .. ".github.io/" .. github_repo_name .. "/issues",
  license = "MIT",
  maintainer = "Victor Cavalcanti <vic.mca.dev@gmail.com>",
  labels = { "typing", "type-system", "moonkind", "util" },
  detailed = [[
Moonkind allows you to easily assert the types of your variables, and doesn't do implicit conversions. 
You can either use it to throw errors in case of mismatched variables, or get the errors as values
to decide how to handle them.
]],
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

build_dependencies = {}
test_dependencies = {}

build = {
  type = "builtin",
  modules = {
    ["moonkind.core.type_checks"] = "lua/moonkind/core/type_checks.lua",
    ["moonkind.core.type_throws"] = "lua/moonkind/core/type_throws.lua",
    ["moonkind.init"] = "lua/moonkind/init.lua",
    ["moonkind.utils.constants"] = "lua/moonkind/utils/constants.lua",
  },
  copy_directories = { "doc" },
}
