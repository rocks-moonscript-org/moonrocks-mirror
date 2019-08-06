package = "lrunkit"
version = '2.1-2'

source  = {
  url   = "git://github.com/daelvn/lrunkit",
  tag   = "v2.1"
}

description = {
  summary  = "Small library for running commands",
  detailed = [[
    Small library for running and interacting with commands
    using wrappers for os.execute and io.popen.
  ]],
  homepage = "https://github.com/daelvn/lrunkit",
}

build = {
  type    = "builtin",
  modules = {
    ["lrunkit.init"] = "lrunkit/init.lua",
    ["lrunkit.v3"]   = "lrunkit/v3.lua"
  },
}
