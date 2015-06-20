package = "jsonnet"
version = '0.1-1'
source = {
  url = "git://github.com/yuduanchen/luajit-jsonnet.git",
}

description =
{
  summary = "luajit-jsonnet - The Google Jsonnet( operation data template language) for Luajit";
  homepage = "https://github.com/yuduanchen/luajit-jsonnet";
  license = "Apache License";
}

dependencies =
{
  "lua >= 5.1"; -- In fact this should be "luajit >= 2.0.0"
}
build = {
    type = "make",
     modules = { 
     	 jsonnet = 'jsonnet.lua'
     },
     platforms = {
      linux = {
          install_target = "install",
      }
    }
}
