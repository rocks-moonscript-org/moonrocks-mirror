local git_tag = "v0.0.1"
local modrev = "0.0.1"
local specrev = "-1"

local repo_url = "https://github.com/AlejandroSuero/freeze-code.nvim"

rockspec_format = "3.0"
package = "freeze-code.nvim"
version = modrev .. specrev

description = {
  summary = "A code snapshot plugin using freeze.",
  detailed = [[
    This plugin allows you to take a `screenshot` of your code,
    thanks to freeze by charm.sh.  
]],
  labels = { },
  homepage = "https://github.com/AlejandroSuero/freeze-code.nvim",
  license = 'MIT'
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "luassert"
}

source = {
  url = repo_url .. "/archive/" .. git_tag .. ".zip",
  dir = "freeze-code.nvim-" .. modrev,
}

build = {
  type = "builtin",
  copy_directories = {
    "doc"
  }
}

test = {
  type = "command",
  command = "make test"
}
