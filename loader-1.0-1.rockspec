package = "loader"
version = "1.0-1"

source = {
   url = "git://github.com/nashory/loader-torch",
   tag = "master"
}

description = {
   summary = "Multi-threaded data loader module for Torch",
   detailed = [[
   Multi-threaded data loader module for Torch
   ]],
   homepage = "https://github.com/nashory/loader-torch",
   license = "BSD-3 Clause"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0"
}

build = {
   type = "command",
   build_command = [[
   cmake -E make_directory build;
   cd build;
   cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
