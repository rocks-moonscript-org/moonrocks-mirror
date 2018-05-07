package = "pandocmeta"
version = "0.2-1"
source = {
   url = "git://github.com/odkr/pandocmeta.lua",
   tag = "v0.2-1"
}
description = {
   summary = "Convert Pandoc metadata types to a table.",
   detailed = [[
Provides a function that converts
Pandoc metadata types to a, possibly multi-dimensional, table.

Suppose, for example, your document has this YAML header:

   ---
   title: The document title
   author:
   - name: Author One
     affiliation: University of Somewhere
   - name: Author Two
     affiliation: University of Nowhere
   ...

pandocmeta allows you to access the affiliation of the second
author by saying::

   require 'pandocmeta'

   function Pandoc (doc)
       meta = pandocmeta.totable(doc.meta)
       affiliation = meta['author'][2]['affiliation']
   end

See <https://github.com/odkr/pandoc-refheadstyle.lua>
for a real-word example.

See <https://github.com/odkr/pandocmeta.lua> for details.
]],
   license = "MIT" -- or whatever you like
}
dependencies = {
   "lua >= 5.3, <6"
}
build = {
    type = "builtin",
    modules = {
        pandocmeta = "pandocmeta.lua/src/pandocmeta.lua"
    },
    copy_directories = { "pandocmeta.lua/doc", "pandocmeta.lua/test" }
}
