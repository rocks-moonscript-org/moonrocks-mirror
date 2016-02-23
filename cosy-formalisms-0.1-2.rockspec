package = "cosy-formalisms"
version = "0.1-2"

source = {
  url = "git://github.com/CosyVerif/formalisms",
  tag = "0.1",
}

description = {
  summary     = "Formalisms for CosyVerif",
  detailed    = [[]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "layeredata",
}

build = {
  type    = "builtin",
  modules = {
    ["cosy.formalism.layer"] = "src/cosy/formalism/layer.lua",
    ["cosy.formalism.tool" ] = "src/cosy/formalism/tool/init.lua",

    ["cosy.formalism.data.check_container"] = "src/cosy/formalism/data/check_container.lua",
    ["cosy.formalism.data.check_type"     ] = "src/cosy/formalism/data/check_type.lua",
    ["cosy.formalism.data.collection"     ] = "src/cosy/formalism/data/collection.lua",
    ["cosy.formalism.data.enumeration"    ] = "src/cosy/formalism/data/enumeration.lua",
    ["cosy.formalism.data.polynomial"     ] = "src/cosy/formalism/data/polynomial.lua",
    ["cosy.formalism.data.record"         ] = "src/cosy/formalism/data/record.lua",

    ["cosy.formalism.graph"                 ] = "src/cosy/formalism/graph/init.lua",
    ["cosy.formalism.graph.directed"        ] = "src/cosy/formalism/graph/directed.lua",
    ["cosy.formalism.graph.binary_edges"    ] = "src/cosy/formalism/graph/binary_edges.lua",
    ["cosy.formalism.graph.unique_edges"    ] = "src/cosy/formalism/graph/unique_edges.lua",
    ["cosy.formalism.graph.labeled.edges"   ] = "src/cosy/formalism/graph/labeled/edges.lua",
    ["cosy.formalism.graph.labeled.vertices"] = "src/cosy/formalism/graph/labeled/vertices.lua",

    ["cosy.formalism.automaton"    ] = "src/cosy/formalism/automaton/init.lua",
    ["cosy.formalism.automaton.ita"] = "src/cosy/formalism/automaton/ita.lua",

    ["cosy.formalism.petrinet"] = "src/cosy/formalism/petrinet/init.lua",
  },
}
