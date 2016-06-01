package = "torchhtk"
version = "0.0-1"

source = {
   url = "git://github.com/Richermans/torchhtk",
   tag = "master"
}

description = {
   summary = "A HTK format loader/writer for Torch",
   detailed = [[
      Load htk files into torch.
   ]],
   homepage = "https://github.com/Richermans/torchhtk",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
   "xlua >= 1.0",
   "argcheck",
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
