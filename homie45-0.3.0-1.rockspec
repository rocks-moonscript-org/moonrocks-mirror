local package_name = "homie45"
local package_version = "0.3.0"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = "homie45"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = (package_version == "scm") and "main" or nil,
  tag = (package_version ~= "scm") and ("v" .. package_version) or nil,
}

description = {
  summary = "Homie bridge for Homie 4 devices to Homie 5",
  detailed = [[
    Homie bridge for Homie 4 devices to Homie 5
  ]],
  license = "MIT",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
}

dependencies = {
  "lua >= 5.1, < 5.5",
  "copas >= 4.3, < 5",
  -- "luabitop", -- this fails on Lua 5.4
  "luamqttt",
  "lualogging >= 1.6",
  "penlight ~> 1",
  "lua-cjson",
  "luasystem >= 0.3",
}

build = {
  type = "builtin",

  modules = {
    ["homie45.init"] = "src/homie45/init.lua",
    ["homie45.device"] = "src/homie45/device.lua",
  },

  install = {
    bin = {
      ["homie45bridge"] = "bin/homie45bridge.lua",
    }
  },

  copy_directories = {
    -- can be accessed by `luarocks homie45 doc` from the commandline
    "docs",
  },
}
