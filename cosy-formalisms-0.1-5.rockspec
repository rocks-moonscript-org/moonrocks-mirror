package = "cosy-formalisms"
version = "0.1-5"

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
    ["cosy.formalism.tool" ] = "src/cosy/formalism/tool/init.lua",

    ["cosy.formalism.type"            ] = "src/cosy/formalism/type/init.lua",
    ["cosy.formalism.type.check"      ] = "src/cosy/formalism/type/check.lua",
    ["cosy.formalism.type.all_of"     ] = "src/cosy/formalism/type/all_of.lua",
    ["cosy.formalism.type.one_of"     ] = "src/cosy/formalism/type/one_of.lua",
    ["cosy.formalism.type.constrained"] = "src/cosy/formalism/type/constrained.lua",

    ["cosy.formalism.data.check_container"] = "src/cosy/formalism/data/check_container.lua",
    ["cosy.formalism.data.collection"     ] = "src/cosy/formalism/data/collection.lua",
    ["cosy.formalism.data.enumeration"    ] = "src/cosy/formalism/data/enumeration.lua",
    ["cosy.formalism.data.polynomial"     ] = "src/cosy/formalism/data/polynomial.lua",
    ["cosy.formalism.data.record"         ] = "src/cosy/formalism/data/record.lua",

    ["cosy.formalism.graph"                 ] = "src/cosy/formalism/graph/init.lua",
    ["cosy.formalism.graph.directed"        ] = "src/cosy/formalism/graph/directed.lua",
    ["cosy.formalism.graph.binary_edges"    ] = "src/cosy/formalism/graph/binary_edges.lua",
    ["cosy.formalism.graph.unique_edges"    ] = "src/cosy/formalism/graph/unique_edges.lua",

    ["cosy.formalism.automaton"    ] = "src/cosy/formalism/automaton/init.lua",
    ["cosy.formalism.automaton.ita"] = "src/cosy/formalism/automaton/ita.lua",

    ["cosy.formalism.petrinet"] = "src/cosy/formalism/petrinet/init.lua",
  },
}
