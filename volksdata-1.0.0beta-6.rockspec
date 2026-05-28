rockspec_format = "3.0"
package = "volksdata"
version = "1.0.0beta-6"

source = {
   url = "git+https://git.knowledgetx.com/scossu/volksdata_lua.git",
   tag = "v1.0b6",
}

description = {
   summary = "Compact, minimalistic RDF library and persistent store.",
   detailed = [[
      Volksdata is an embedded library to manipulate and permanently store
      Linked Data. It handles terms, triples, graphs, and has in-memory and
      persistent storage back ends. It can encode and decode Turtle and N3
      syntax.
   ]],
   homepage = "http://git.knowledgetx.com/scossu/volksdata_lua",
   license =
       "https://git.knowledgetx.com/scossu/volksdata_lua/src/master/LICENSE"
}

dependencies = {
   "lua >= 5.4, < 6",
}

build = {
   type = "make",
}
