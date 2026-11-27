rockspec_format = "3.0"
package = "airsstack"
version = "0.3.0-1"
source = {
   url = "git+https://github.com/airsstack/airsl",
   tag = "airsl-cli-v0.3.0",
}
description = {
   summary = "The airsl host modules as a native module for Lua 5.4",
   homepage = "https://airsstack.github.io/airsl/",
   license = "Apache-2.0",
}
dependencies = {
   "lua == 5.4",
}
build_dependencies = {
   "luarocks-build-rust-mlua == 0.2.7",
}
build = {
   type = "rust-mlua",
   cargo_extra_args = { "--package", "airsl-lua", "--locked" },
   modules = { airsstack = "airsstack" },
   copy_directories = { "crates/airsl-lua/doc" },
}
