local package_name = "copas-sse"
local package_version = "0.0.3"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = "copas-sse"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = (package_version == "scm") and "main" or nil,
  tag = (package_version ~= "scm") and package_version or nil,
}

description = {
  summary = "Lua Server-Sent-Events client for use with the Copas scheduler",
  detailed = [[
    Lua Server-Sent-Events client for use with the Copas scheduler
  ]],
  license = "MIT",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
}

dependencies = {
  "lua >= 5.1, < 5.5",
  "copas >= 4.1",
}

build = {
  type = "builtin",

  modules = {
    ["copas-sse.client"] = "src/copas-sse/client.lua",
    ["copas-sse.log"] = "src/copas-sse/log.lua",
  },

  copy_directories = {
    "docs",
  },
}
