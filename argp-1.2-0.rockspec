package = "argp"
version = "1.2-0"
source = {
  url = "git+https://github.com/uriid1/argp.git",
  tag = "v1.2"
}

description = {
  summary = "Lightweight GNU-style argument parser",
  detailed = [[
    A minimalist command-line argument parser compatible with GNU Tools style.
    Supports short and long options, multiple arguments, type checking, and help output.
  ]],
  homepage = "https://github.com/uriid1/argp",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["argp"] = "argp.lua"
  }
}
