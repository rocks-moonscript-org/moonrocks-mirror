package = "moon-sand"
local rock_version = "0.0.3"
local rock_release = "2"
local namespace = "lunarmodules"
local repository = package

version = ("%s-%s"):format(rock_version, rock_release)

source = {
  url = ("git+https://github.com/%s/%s.git"):format(namespace, repository),
  branch = rock_version == "scm" and "master" or nil,
  tag = rock_version ~= "scm" and "v"..rock_version or nil,
}

description = {
   summary = "Just for testing automated deployments via CI, not a useful module",
   detailed = [[
      Just for testing automated deployments via CI, not a useful module
    ]],
   license = "MIT",
   homepage = ("https://%s.github.io/%s"):format(namespace, repository),
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["moon-sand"] = "src/init.lua",
   }
}

-- touch to trigger workflow 4
