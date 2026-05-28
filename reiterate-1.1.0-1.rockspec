rockspec_format = '3.0'

package = "reiterate"
version = "1.1.0-1"

source = {
  url = "git+https://github.com/ProCern/reiterate.git",
  tag = "v1.1.0",
}

description = {
  summary = "Iterator adapters and Rust-style chained iterators for Lua",
  detailed = ([[
    Lua iterator adapters, utilities, and a Rust-style chained iterator adapter
    allowing more functional-style iterator modification.
  ]]):gsub("^%s*(.-)%s*$", '%1'):gsub('%s+', ' '),
  homepage = "https://github.com/ProCern/reiterate",
  license = "MPL-2.0",
}

dependencies = {
  "lua >= 5.4",
  "close-stack >= 1.0.0, < 2.0.0",
}

build = {
  type = "builtin",
}
