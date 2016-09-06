package = "colormap"
version = "1.1-2"
source = {
   url = "git://github.com/JannerM/torch-colormap",
   tag = "master"
}

description = {
   summary = "MATLAB-style colormaps for Torch."
}

dependencies = {
   "torch >= 7.0",
   "luafilesystem",
   "image"
}

build = {
   type = "builtin",

   modules = {
      colormap = 'colormap.lua'
   }
}