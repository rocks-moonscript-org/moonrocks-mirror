package = "indexedpng"
version = "1.0-0"

source = {
   url = "git://github.com/xdever/indexedpng",
   tag = "master"
}

description = {
   summary = "A library for loading palette indexed PNG images for Torch",
   detailed = [[
Load paletted PNG images into Torch tensor ignoring it's color palette.
Useful for loading the segmentation when training fully convolutional
segmentation neural netowrks.
   ]],
   homepage = "git://github.com/xdever/indexedpng",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0",
   "dok"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DLUALIB=$(LUALIB) -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
