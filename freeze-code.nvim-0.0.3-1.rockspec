local git_tag = "v0.0.3"
local modrev = "0.0.3"
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
  labels = { 'charm', 'charmbracelet', 'freeze', 'golang', 'neovim', 'neovim-plugin', 'open-source', 'plenary', 'plugin' } ,
  homepage = "https://luarocks.org/modules/AlejandroSuero/freeze-code.nvim",
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
