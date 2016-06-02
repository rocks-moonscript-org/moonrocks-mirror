package = 'torch-graph-criterion'
version = "0.0.1-1"

description = {
  summary = 'Torch Graph Criterion',
  detailed = [[
    A mulit-criterion which maps every output of a graph module
    to its own criterion.
  ]]
}

source = {
  url = 'https://github.com/gpleiss/torch-graph-criterion'
}

dependencies = {
  'torch >= 7.0',
  'lua ~> 5.1',
  'moses'
}
build = {
  type = 'builtin',
  modules = {
    GraphCriterion = 'graph-criterion.lua'
  }
}
