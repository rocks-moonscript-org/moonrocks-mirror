local package_name = "loon"
local package_version = "0.1.0"
local rockspec_revision = "0"
local github_account_name = "tommaisey"
local github_repo_name = package_name

package = "Loon"
version = package_version .. "-" .. rockspec_revision
source = {
    url = "git+https://github.com/" .. github_account_name .. "/" .. github_repo_name .. ".git",
    tag = "v0.1.0"
}
description = {
   summary = "Unit and snapshot testing framework.",
   detailed = [[
      An extensible test framework, with beautiful output.
      The base of the library offers simple unit testing,
      as well as hooks to add custom assertions, summary
      output and command line arguments. These hooks can
      be used to write plugins, and a single plugin 'snap'
      is provided, which offers snapshot testing with
      nice diff output and interactive test updates.
   ]],
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        loon = "loon/loon.lua",
        ["loon.snap"] = "loon/snap.lua",
        ["loon.args"] = "loon/args.lua",
        ["loon.util"] = "loon/util.lua",
        ["loon.color"] = "loon/color.lua",
        ["loon.serpent"] = "loon/serpent.lua",
    }
}
