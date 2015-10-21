package = "dromozoa-graph"
version = "1.17-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-graph/archive/v1.17.tar.gz";
  file = "dromozoa-graph-1.17.tar.gz";
}
description = {
  summary = "Graph data structures and algorithms";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-graph/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.graph"] = "dromozoa/graph.lua";
    ["dromozoa.graph.bfs"] = "dromozoa/graph/bfs.lua";
    ["dromozoa.graph.dfs"] = "dromozoa/graph/dfs.lua";
    ["dromozoa.graph.edge"] = "dromozoa/graph/edge.lua";
    ["dromozoa.graph.graphviz"] = "dromozoa/graph/graphviz.lua";
    ["dromozoa.graph.model"] = "dromozoa/graph/model.lua";
    ["dromozoa.graph.vertex"] = "dromozoa/graph/vertex.lua";
  };
}
