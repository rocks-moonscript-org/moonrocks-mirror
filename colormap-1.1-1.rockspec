package = "colormap"
version = "1.1-1"
source = {
   url = "git://github.com/JannerM/torch-colormap",
   tag = "master"
}

description = {
   summary = "MATLAB-style colormaps for Torch."
}

dependencies = {
   "torch >= 7.0"
}

build = {
   type = "builtin",

   modules = {
      colormap = 'colormap.lua'
   }
}