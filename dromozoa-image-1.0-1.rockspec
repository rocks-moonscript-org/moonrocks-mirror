package = "dromozoa-image"
version = "1.0-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-image/archive/v1.0.tar.gz";
  file = "dromozoa-image-1.0.tar.gz";
}
description = {
  summary = "Portable toolkit for manipulation of graphics images";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-image/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.image"] = "dromozoa/image.lua";
    ["dromozoa.image.magick_reader"] = "dromozoa/image/magick_reader.lua";
    ["dromozoa.image.magick_writer"] = "dromozoa/image/magick_writer.lua";
    ["dromozoa.image.pam_writer"] = "dromozoa/image/pam_writer.lua";
    ["dromozoa.image.pixel"] = "dromozoa/image/pixel.lua";
    ["dromozoa.image.pixel1"] = "dromozoa/image/pixel1.lua";
    ["dromozoa.image.pixel2"] = "dromozoa/image/pixel2.lua";
    ["dromozoa.image.pixel3"] = "dromozoa/image/pixel3.lua";
    ["dromozoa.image.pixel4"] = "dromozoa/image/pixel4.lua";
    ["dromozoa.image.pnm_reader"] = "dromozoa/image/pnm_reader.lua";
    ["dromozoa.image.sips_reader"] = "dromozoa/image/sips_reader.lua";
    ["dromozoa.image.sips_writer"] = "dromozoa/image/sips_writer.lua";
    ["dromozoa.image.tga_reader"] = "dromozoa/image/tga_reader.lua";
    ["dromozoa.image.tga_writer"] = "dromozoa/image/tga_writer.lua";
  };
}
