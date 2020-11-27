
package = "rock-hello"
version = "1.0.0-1"
source = {
  url = "git://github.com/hello-world-example/Lua.git",
  tag = "v.rock-hello-1.0.0-1",
  branch = "rock-hello-1.0.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["hello-rock"] = "src/hello.lua"
  }
}
