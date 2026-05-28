rockspec_format = "3.0"
package = "lls-addon-ddnetpp"
version = "0.10-0"
source = {
	url = "git+https://github.com/DDNetPP/lls-addon-ddnetpp",
}
description = {
	summary = "LuaLS type definitions for DDNet++ plugins",
	detailed = "Manually written LuaCATS annotations the DDNet++ plugin api",
	homepage = "https://github.com/DDNetPP/lls-addon-ddnetpp",
	license = "Zlib",
}
dependencies = {
  "luluworlds-params"
}
test_dependencies = {
   "simple-assert",
}
test = {
  type = "command",
  command = "make test"
}
build = {
	type = "lls-addon",
	copy_directories = {"src"},
}
