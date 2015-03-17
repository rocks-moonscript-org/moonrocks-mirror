package = "dromozoa-graph"
version = "1.0-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-graph/archive/v1.0.tar.gz";
  file = "dromozoa-graph-1.0.tar.gz";
}
description = {
  summary = "Graph data structures and algorithms";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-graph/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.graph"] = "dromozoa/graph.lua";
    ["dromozoa.graph.adjacency_list"] = "dromozoa/graph/adjacency_list.lua";
    ["dromozoa.graph.bfs"] = "dromozoa/graph/bfs.lua";
    ["dromozoa.graph.bfs_visitor"] = "dromozoa/graph/bfs_visitor.lua";
    ["dromozoa.graph.dfs"] = "dromozoa/graph/dfs.lua";
    ["dromozoa.graph.dfs_visitor"] = "dromozoa/graph/dfs_visitor.lua";
    ["dromozoa.graph.edge"] = "dromozoa/graph/edge.lua";
    ["dromozoa.graph.edges"] = "dromozoa/graph/edges.lua";
    ["dromozoa.graph.properties"] = "dromozoa/graph/properties.lua";
    ["dromozoa.graph.vertex"] = "dromozoa/graph/vertex.lua";
    ["dromozoa.graph.vertices"] = "dromozoa/graph/vertices.lua";
    ["dromozoa.graph.visitor_adapter"] = "dromozoa/graph/visitor_adapter.lua";
  };
}
