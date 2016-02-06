package = "rmrf"
version = "0.1.0-3"
local v = version:gsub("%-%d", "")
source = {
  url = "git://github.com/xpol/rmrf.git",
  tag="v"..v
}
description={
   summary = "A `rm -rf` module for Lua.",
   detailed = "A `rm -rf` module for Lua works on Windows, Linux and Mac OS.",
   homepage = "http://github.com/xpol/rmrf",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}

build = {
	type="builtin",
	modules={
		rmrf={"src/rmrf.c", "src/lua-rmrf.c"}
	}
}
