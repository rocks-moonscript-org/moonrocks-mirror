package = "csn7"
version = "1.13-1"
source = {
  url = "https://github.com/brigid-jp/csn7/archive/v1.13.tar.gz";
  file = "csn7-1.13.tar.gz";
}
dependencies = {
  "brigid";
}
description = {
  summary = "";
  license = "MIT";
  homepage = "https://github.com/brigid-jp/csn7/";
  maintainer = "dev@brigid.jp";
}
build = {
  type = "builtin";
  modules = {};
  install = {
    bin = {
      csn7 = "csn7";
    };
  };
}
