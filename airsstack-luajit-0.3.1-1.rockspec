rockspec_format = "3.0"
package = "airsstack-luajit"
version = "0.3.1-1"
source = {
   url = "git+https://github.com/airsstack/airsl",
   tag = "airsl-cli-v0.3.1",
}
description = {
   summary = "The airsl host modules as a native module for LuaJIT",
   homepage = "https://airsstack.github.io/airsl/",
   license = "Apache-2.0",
}
dependencies = {
   "lua == 5.1",
   "luajit >= 2.1",
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
