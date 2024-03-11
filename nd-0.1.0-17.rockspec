local package_name = "nd"
local package_version = "0.1.0"
local rockspec_revision = "17"
local github_account_name = "f4z3r"
local github_repo_name = package_name

rockspec_format = "3.0"
package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git://github.com/" .. github_account_name .. "/" .. github_repo_name .. ".git",
}

-- if package_version == "scm" then
--   source.branch = "master"
-- else
--   source.tag = "v" .. package_version
-- end

-- TODO remove once stable version is reached
source.tag = "v0.1.0-rc" .. rockspec_revision

description = {
  summary = 'Simple time tracking tool with a pomodoro timer.',
  detailed = [[
    A tool to track work and other tasks, allowing
    to assign them projects, tags, contexts, and
    more. The tool also offers pomodoro timer
    functionality via systemd.
  ]],
  homepage = "https://github.com/f4z3r/nd",
  license = "MIT <http://opensource.org/licenses/MIT>"
}

dependencies = {
  "lua == 5.1",
  "lua-path >= 0.3",
  "date >= 2.2",
  "utf8 >= 0.1",
  "argparse >= 0.7",
}

test_dependencies = {
  "busted >= 2.0",
}

test = {
  type = "busted",
}

build = {
  type = "builtin",
  modules = {
    ["nd"]                      = "nd/init.lua",
    ["nd.config"]               = "nd/config.lua",
    ["nd.luatext"]              = "nd/luatext.lua",
    ["nd.luatables"]            = "nd/luatables.lua",
    ["nd.records"]              = "nd/records.lua",
    ["nd.timer"]                = "nd/timer.lua",

    ["nd.utils"]                = "nd/utils/init.lua",
    ["nd.utils.strings"]        = "nd/utils/strings.lua",

    ["nd.entry_log"]            = "nd/entry_log/init.lua",
    ["nd.entry_log.entry"]      = "nd/entry_log/entry.lua",

    ["nd.reports"]              = "nd/reports/init.lua",

    ["nd.commands"]             = "nd/commands/init.lua",
    ["nd.commands.add"]         = "nd/commands/add.lua",
    ["nd.commands.complete"]    = "nd/commands/complete.lua",
    ["nd.commands.report"]      = "nd/commands/report.lua",
    ["nd.commands.edit"]        = "nd/commands/edit.lua",
    ["nd.commands.hello"]       = "nd/commands/hello.lua",
    ["nd.commands.pomo"]        = "nd/commands/pomo/init.lua",
    ["nd.commands.pomo.start"]  = "nd/commands/pomo/start.lua",
    ["nd.commands.pomo.skip"]   = "nd/commands/pomo/skip.lua",
    ["nd.commands.pomo.stop"]   = "nd/commands/pomo/stop.lua",
    ["nd.commands.pomo.status"] = "nd/commands/pomo/status.lua",
    ["nd.commands.pomo.toggle"] = "nd/commands/pomo/toggle.lua",
  },
  install = {
    bin = {
      ["nd"] = "bin/nd",
    },
  },
}
