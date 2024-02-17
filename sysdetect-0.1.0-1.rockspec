rockspec_format = "3.0"
package = "sysdetect"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/luarocks/sysdetect",
   tag = "0.1.0",
}
description = {
   summary = "detect the architecture and OS without forking subprocesses",
   detailed = [[
      A library to detect the operating system and architecture without forking a
      subprocess.

      We are not going for an exhaustive list of every historical system here, but
      we're aiming to cover at least every platform where LuaRocks is known to run.
      If your system is not detected, patches are welcome!
   ]],
   homepage = "https://github.com/luarocks/sysdetect",
   license = "MIT/X11"
}
build_dependencies = {
   "luarocks-build-cyan",
}
test_dependencies = {
   "luafilesystem",
}
build = {
   type = "cyan",
}
