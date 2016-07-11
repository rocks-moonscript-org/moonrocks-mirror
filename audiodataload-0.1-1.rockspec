package = "audiodataload"
version = "0.1-1"

source = {
   url = "git://github.com/Richermans/audiodataload",
   tag = "v0.2"
}

description = {
   summary = "A library for loading audio based features in torch",
   homepage = "https://github.com/Richermans/audiodataload",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
   "xlua >= 1.0",
   "luafilesystem >= 1.6.2",
   "sys >= 1.1",
   "audio >= 0.1",
   "torchx >= 1.0",
   "paths >= 1.0"
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
