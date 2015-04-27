package = "dromozoa-ubench"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-ubench/archive/v1.1.tar.gz";
  file = "dromozoa-ubench-1.1.tar.gz";
}
description = {
  summary = "Microbenchmark utility";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-ubench/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.ubench.gettimeofday"] = "dromozoa/ubench/gettimeofday.c";
    ["dromozoa.ubench.linest"] = "dromozoa/ubench/linest.lua";
    ["dromozoa.ubench.max"] = "dromozoa/ubench/max.lua";
    ["dromozoa.ubench.min"] = "dromozoa/ubench/min.lua";
    ["dromozoa.ubench.nanosleep"] = "dromozoa/ubench/nanosleep.c";
    ["dromozoa.ubench.run"] = "dromozoa/ubench/run.lua";
    ["dromozoa.ubench.stdev"] = "dromozoa/ubench/stdev.lua";
  };
  install = {
    bin = {
      ["dromozoa-ubench-run"] = "dromozoa-ubench-run";
    };
  };
}
