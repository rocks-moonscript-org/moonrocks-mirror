rockspec_format = "3.0"
package = "dromozoa-graph"
version = "1.29-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-graph/archive/v1.29.tar.gz";
  file = "dromozoa-graph-1.29.tar.gz";
}
description = {
  summary = "Graph data structures and algorithms";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-graph/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-dom";
  "dromozoa-utf8";
  "dromozoa-vecmath";
}
test = {
  type = "command";
  command = "./test.sh";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.graph"] = "dromozoa/graph.lua";
    ["dromozoa.graph.adjacency_list"] = "dromozoa/graph/adjacency_list.lua";
    ["dromozoa.graph.binary_heap"] = "dromozoa/graph/binary_heap.lua";
    ["dromozoa.graph.brandes_kopf"] = "dromozoa/graph/brandes_kopf.lua";
    ["dromozoa.graph.count_crossings"] = "dromozoa/graph/count_crossings.lua";
    ["dromozoa.graph.count_crossings_bilayer"] = "dromozoa/graph/count_crossings_bilayer.lua";
    ["dromozoa.graph.layout"] = "dromozoa/graph/layout.lua";
    ["dromozoa.graph.linked_list"] = "dromozoa/graph/linked_list.lua";
    ["dromozoa.graph.longest_path"] = "dromozoa/graph/longest_path.lua";
    ["dromozoa.graph.make_dummy_vertices"] = "dromozoa/graph/make_dummy_vertices.lua";
    ["dromozoa.graph.make_layers"] = "dromozoa/graph/make_layers.lua";
    ["dromozoa.graph.make_paths"] = "dromozoa/graph/make_paths.lua";
    ["dromozoa.graph.minimize_crossings"] = "dromozoa/graph/minimize_crossings.lua";
    ["dromozoa.graph.promote_vertices"] = "dromozoa/graph/promote_vertices.lua";
    ["dromozoa.graph.remove_cycles"] = "dromozoa/graph/remove_cycles.lua";
    ["dromozoa.graph.remove_self_edges"] = "dromozoa/graph/remove_self_edges.lua";
    ["dromozoa.graph.render"] = "dromozoa/graph/render.lua";
    ["dromozoa.graph.subdivide_double_edges"] = "dromozoa/graph/subdivide_double_edges.lua";
    ["dromozoa.graph.subdivide_special_edges"] = "dromozoa/graph/subdivide_special_edges.lua";
  };
}
