package = "luajit-jsonnet"
version = '0.1-1'
source = {
  url = "https://github.com/yuduanchen/luajit-jsonnet/archive/master.tar.gz";
  dir = "luajit-jsonnet-master";
}

description =
{
  summary = "luajit-jsonnet - The Google Jsonnet( operation data template language) for Luajit";
  homepage = "https://github.com/yuduanchen/luajit-jsonnet";
  license = "Apache License";
}

dependencies =
{
  "lua == 5.1"; -- In fact this should be "luajit >= 2.0.0"
}
build = {
    type = 'builtin'
}