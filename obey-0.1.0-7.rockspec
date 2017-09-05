-- luacheck: push std rockspec
package = "OBEY"
version = "0.1.0-7"
source = {
  url = "git+https://github.com/Positive07/obey.git",
  tag = "v0.1.0"
}
description = {
  summary = "A simple and configurable task automation tool.",
  detailed = [[OBEY is a simple way to execute programmed tasks through the command line.
This tasks are easily configured through a command.lua file, and plugins are available to make this even easier.
]],
  homepage = "https://positive07.github.com/obey",
  license = "MIT <http://opensource.org/licenses/MIT>",
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = 'builtin',
  modules = {
    ['obey.arguments'] = 'src/arguments.lua', -- Argument parsing
    ['obey.execute'] = 'src/execute.lua', -- Protect functions
    ['obey.main'] = 'src/main.lua', -- Start point
    ['obey.interface'] = 'src/interface.lua', -- Commands
    ['obey.loader'] = 'src/loader.lua', -- Load commands.lua
    ['obey.plugins'] = 'src/plugins.lua', -- Load plugins
    ['obey.strings'] = 'src/strings.lua', -- Strings
    ['obey.start'] = 'src/start.lua', -- Main function
    ['obey'] = 'src/init.lua' -- OBEY module
  },
  install = {
    bin = {
      obey = "bin/obey.lua" -- Calls Start point
    }
  }
}
-- luacheck: pop
