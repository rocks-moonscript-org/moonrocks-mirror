rockspec_format = "3.0"
package = "omelette"
version = "0.1.7-1"
source = {
  url = "git+https://github.com/dennyabraham/omelette-lang.git",
  tag = "v0.1.7",
}
description = {
  summary = "An ML-flavored language that transpiles to readable Lua 5.1",
  homepage = "https://github.com/dennyabraham/omelette-lang",
  license = "MIT",
}
dependencies = { "lua >= 5.1" }
build = {
  -- A command build: std/*.egg must be compiled to Lua at install time (a `builtin` build
  -- cannot run a compile step), and nothing generated is committed. build-std writes the
  -- compiled std into build-out/std/, then everything is copied into LuaRocks' locations.
  -- The omelette/*.lua glob installs all modules, including omelette.typecheck.
  type = "command",
  build_command = "lua build/build-std.lua build-out",
  -- plain string concatenation (the `..` operator needs no stdlib), so the rockspec loads in
  -- a bare sandbox; $(LUADIR)/$(BINDIR) are LuaRocks' install-location substitutions.
  -- The installed launcher is generated from bin/omelette.in with @LUADIR@ replaced by the
  -- rock's Lua dir, so the CLI resolves omelette.*/std.* without `luarocks path` and uses a
  -- portable `lua` shebang. (# is the sed delimiter so the path's slashes need no escaping.)
  install_command =
    "mkdir -p $(LUADIR)/omelette $(LUADIR)/std $(BINDIR) && " ..
    "cp omelette/*.lua $(LUADIR)/omelette/ && " ..
    "cp build-out/std/*.lua $(LUADIR)/std/ && " ..
    "sed 's#@LUADIR@#$(LUADIR)#g' bin/omelette.in > $(BINDIR)/omelette && " ..
    "chmod +x $(BINDIR)/omelette",
}
