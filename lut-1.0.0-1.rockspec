package = "Lut"
version = "1.0.0-1"
source = {
   url = "http://lubyk.org/archive/lut-REL-1.0.0.tar.gz",
   dir = 'lut-REL-1.0.0',
}
description = {
   summary = "Utility module for lubyk. Contains a documentation generator and testing facilities.",
   detailed = [[
      lub.Doc: a powerful documentation generator for Lua code with support for
      litterate programming, cross-reference linking, images, latex math, etc.
      
      lub.Test: unit testing framework.
   ]],
   --   lub.Test: A simple yet powerful unit testing framework.
   homepage = "http://lubyk.org",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1",
   "lub ~> 1.0",
}
build = {
  type = 'builtin',
  modules = {
    ['lut.Doc'] = 'lut/Doc.lua',
    ['lut'         ] = 'lut/init.lua',
    ['lut.Test'] = 'lut/Test.lua',
  },
  install = {
    lua = {
      ['lut.doc.template'] = 'lut/doc/template.html',
      ['lut.doc.css.bootstrap_min_css'] = 'lut/doc/css/bootstrap.min.css',
      ['lut.doc.css.docs_css'] = 'lut/doc/css/docs.css',
      ['lut.doc.img.glyphicons-halflings-white_png'] = 'lut/doc/img/glyphicons-halflings-white.png',
      ['lut.doc.img.glyphicons-halflings_png'] = 'lut/doc/img/glyphicons-halflings.png',
      ['lut.doc.js.bootstrap_min_js'] = 'lut/doc/js/bootstrap.min.js',
    },
  }
}
