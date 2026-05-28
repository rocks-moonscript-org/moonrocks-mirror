package = "pipeflow"
version = "0.1.1-1"
source = {
   url = "git+https://github.com/Desvelao/pipeflow",
   branch = "v0.1.1"
}
description = {
   summary = 'Transform data through a pipeline definition',
   detailed = [[
This library provides a sequentional processor to transform data. This is inspired by the ingest pipeline of Elasticsearch.

It can be used to process any data type and apply changes with different processors.

Each processor can modify the data or use it to print or send to external services.
]],
   homepage = "https://github.com/Desvelao/pipeflow",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "busted == 2.2.0-1"
}
build = {
   type = "builtin",
   modules = {
      ["pipeflow"] = "pipeflow.lua"
   }
}
