package = "sayit"
local rock_version = "1.7"
local rock_release = "1"
local namespace = "kulti"
local repository = "sayit"

rockspec_format = "3.0"
version = ("%s-%s"):format(rock_version, rock_release)

source = {
  url = ("git+https://github.com/%s/%s.git"):format(namespace, repository),
  branch = rock_version == "scm" and "master" or nil,
  tag = rock_version ~= "scm" and "v"..rock_version or nil,
}

description = {
  summary = "Lua string hashing/indexing library",
  detailed = [[
    Useful for internationalization.
  ]],
  license = "MIT",
  homepage = ("https://%s.github.io/%s"):format(namespace, repository),
  issues_url = ("https://github.com/%s/%s/issues"):format(namespace, repository),
}

dependencies = {
  "lua >= 5.1",
}

test_dependencies = {
  "busted",
}

test = {
  type = "busted",
}

build = {
  type = "builtin",
  modules = {
    say = "src/say/init.lua"
  }
}
