package = "lut"
version = "1.1.1-1"
source = {
  url = 'git://github.com/lubyk/lut',
  tag = 'REL-1.1.1',
}
description = {
  summary = "Utility module for lubyk. Contains a documentation generator and testing facilities.",
  detailed = [[
    lut.Doc: a powerful documentation generator for Lua code with support for
    litterate programming, cross-reference linking, images, latex math, etc.
    
    lut.Test: unit testing framework.

    lut.Builder: helper to generate luarocks and CMake files.

    Read the documentation at http://doc.lubyk.org/lut.html. 
  ]],
  homepage = "http://doc.lubyk.org/lut.html",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.3",
  "lub >= 1.0.3, < 2",
}
build = {
  type = 'builtin',
  modules = {
    -- Plain Lua files
    ['lut'            ] = 'lut/init.lua',
    ['lut.Builder'    ] = 'lut/Builder.lua',
    ['lut.Doc'        ] = 'lut/Doc.lua',
    ['lut.Test'       ] = 'lut/Test.lua',
  },
  install = {
    -- Assets needed by library.
    lua = {
      ['lut.assets.builder.CMakeLists_txt_in'] = 'lut/assets/builder/CMakeLists.txt.in',
      ['lut.assets.builder.dist_info_in'] = 'lut/assets/builder/dist.info.in',
      ['lut.assets.builder.rockspec_in'] = 'lut/assets/builder/rockspec.in',
      ['lut.assets.doc.css.bootstrap-responsive_min_css'] = 'lut/assets/doc/css/bootstrap-responsive.min.css',
      ['lut.assets.doc.css.bootstrap_min_css'] = 'lut/assets/doc/css/bootstrap.min.css',
      ['lut.assets.doc.css.docs_css'   ] = 'lut/assets/doc/css/docs.css',
      ['lut.assets.doc.img.glyphicons-halflings-white_png'] = 'lut/assets/doc/img/glyphicons-halflings-white.png',
      ['lut.assets.doc.img.glyphicons-halflings_png'] = 'lut/assets/doc/img/glyphicons-halflings.png',
      ['lut.assets.doc.js.bootstrap_min_js'] = 'lut/assets/doc/js/bootstrap.min.js',
      ['lut.assets.doc.template_html'  ] = 'lut/assets/doc/template.html',
    },
  },
}

