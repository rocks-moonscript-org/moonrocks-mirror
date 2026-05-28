local package_name = "statemachine"
local package_version = "0.1.0"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = "statemachine.lua"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = (package_version == "scm") and "main" or nil,
  tag = (package_version ~= "scm") and package_version or nil,
}

description = {
  summary = "a finite state machine implementation in Lua",
  detailed = [[
    a finite state machine implementation in Lua
  ]],
  license = "MIT",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
}

dependencies = {
  "lua >= 5.1, < 5.6",
}

build = {
  type = "builtin",

  modules = {
    ["statemachine.init"] = "src/statemachine/init.lua",
  },

  copy_directories = {
    -- can be accessed by `luarocks statemachine doc` from the commandline
    "docs",
  },
}
