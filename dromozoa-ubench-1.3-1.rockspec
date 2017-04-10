package = "dromozoa-ubench"
version = "1.3-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-ubench/archive/v1.3.tar.gz";
  file = "dromozoa-ubench-1.3.tar.gz";
}
description = {
  summary = "Microbenchmark utility";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-ubench/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-unix";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.ubench"] = "dromozoa/ubench.lua";
    ["dromozoa.ubench.context"] = "dromozoa/ubench/context.lua";
    ["dromozoa.ubench.linest"] = "dromozoa/ubench/linest.lua";
    ["dromozoa.ubench.max"] = "dromozoa/ubench/max.lua";
    ["dromozoa.ubench.min"] = "dromozoa/ubench/min.lua";
    ["dromozoa.ubench.report"] = "dromozoa/ubench/report.lua";
    ["dromozoa.ubench.stdev"] = "dromozoa/ubench/stdev.lua";
  };
  install = {
    bin = {
      ["dromozoa-ubench-report"] = "dromozoa-ubench-report";
      ["dromozoa-ubench-run"] = "dromozoa-ubench-run";
    };
  };
}
