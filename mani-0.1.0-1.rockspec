rockspec_format = "3.0"
package = "mani"
version = "0.1.0-1"

source = {
  url = "git+https://x-access-token:ghs_15368_eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhaWQiOjE1MzY4LCJhdWQiOiIvdHdpcnAvZ2l0aHViLmF1dGhlbnRpY2F0aW9uLnYwLkNyZWRlbnRpYWxNYW5hZ2VyLyIsImF6YyI6WyJzaXRlLzE4NjU5ODMzMzc1Il0sImV4cCI6MTc4MTM2MzU2OCwiaWF0IjoxNzgxMzU5OTY4LCJpc3MiOiJnaXRodWIiLCJqdGkiOiI1M2JkYzYzMi1lOWUzLTQzMzctOWI0Ny1hZGNkMzIyODhmOWUiLCJzdWIiOiJpbnRlZ3JhdGlvbi8xNTM2OCJ9.rThghrPHuvOlEpZLaNqO9iuXV1E_POspCIXBjJcCxK50w7AUeoQRGn2_GX9A5m5Bj_DBUJCIH4lzx2KwXiWCMQ@github.com/colourlabs/mani",
  tag = "v0.1.0",
}

description = {
  summary = "a modern build tool and LuaRocks wrapper for Lua projects",
  license = "MIT",
  homepage = "https://github.com/colourlabs/mani",
}

dependencies = {
  "lua >= 5.3",
  "argparse >= 0.7.0",
}

test_dependencies = {
  "busted >= 2.3.0",
  "luacheck",
}

build = {
  type = "builtin",
  modules = {
    -- entry
    ["mani.main"]     = "src/mani/main.lua",
    ["mani.loader"]   = "src/mani/loader.lua",
    ["mani.api"]      = "src/mani/api.lua",

    -- core
    ["mani.core.log"]       = "src/mani/core/log.lua",
    ["mani.core.exec"]      = "src/mani/core/exec.lua",
    ["mani.core.project"]   = "src/mani/core/project.lua",
    ["mani.core.task"]      = "src/mani/core/task.lua",
    ["mani.core.installer"] = "src/mani/core/installer.lua",
    ["mani.core.lockfile"]  = "src/mani/core/lockfile.lua",
    ["mani.core.resolver"]  = "src/mani/core/resolver.lua",
    ["mani.core.rockspec"]  = "src/mani/core/rockspec.lua",

    -- libs
    ["mani.lib.sha256"]   = "src/mani/lib/sha256.lua",
    ["mani.lib.spdx"]     = "src/mani/lib/spdx.lua",
    ["mani.lib.http"]     = "src/mani/lib/http.lua",

    -- version
    ["mani.version"]  = "src/mani/version.lua",

    -- commands
    ["mani.commands.packages.add"]       = "src/mani/commands/packages/add.lua",
    ["mani.commands.packages.install"]   = "src/mani/commands/packages/install.lua",
    ["mani.commands.packages.remove"]    = "src/mani/commands/packages/remove.lua",
    ["mani.commands.packages.update"]    = "src/mani/commands/packages/update.lua",
    ["mani.commands.project.init"]       = "src/mani/commands/project/init.lua",
    ["mani.commands.project.rockspec"]   = "src/mani/commands/project/rockspec.lua",
    ["mani.commands.run.run"]            = "src/mani/commands/run/run.lua",
    ["mani.commands.run.exec"]           = "src/mani/commands/run/exec.lua",
    ["mani.commands.lockfile.lock"]      = "src/mani/commands/lockfile/lock.lua",
    ["mani.commands.self_updater.self_update"] = "src/mani/commands/self_updater/self_update.lua",
  },
  install = {
    bin = { mani = "bin/mani" }
  }
}
