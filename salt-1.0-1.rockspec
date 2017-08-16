package = "salt"
version = "1.0-1"
source = {
  url = "git://github.com/VaiN474/salt",
  tag = "v1.0"
}
description = {
  summary = "Save and Load Tables in Lua",
  detailed = [[
    Saves Lua table data to a file recursively, human-readable, and with indentation.

    Supported Types: number, string, boolean, sub-tables of the same.
    Unsupported Types will be saved with a value of 'nil' and a comment.
  ]],
  homepage = "https://github.com/VaiN474/salt.git",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    salt = "salt.lua"
  }
}
