package = "lut"
version = "1.2.1-1"
source = {
  url = 'git://github.com/lubyk/lut',
  tag = 'REL-1.2.1',
  dir = 'lut',
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
  "lua >= 5.1, < 5.4",
  "lub >= 1.0.3, < 2",
}
build = {
  type = 'builtin',
  modules = {
    -- Plain Lua files
    ['lut'            ] = 'lut/init.lua',
    ['lut.Builder'    ] = 'lut/Builder.lua',
    ['lut.Doc'        ] = 'lut/Doc.lua',
    ['lut.Project'    ] = 'lut/Project.lua',
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
      ['lut.assets.project.doc.index_html'] = 'lut/assets/project/doc/index.html',
      ['lut.assets.project.doc.LiveFoo_lua'] = 'lut/assets/project/doc/LiveFoo.lua',
      ['lut.assets.project.History_txt'] = 'lut/assets/project/History.txt',
      ['lut.assets.project.include.type.Foo_h'] = 'lut/assets/project/include/type/Foo.h',
      ['lut.assets.project.include.type.type_h'] = 'lut/assets/project/include/type/type.h',
      ['lut.assets.project.LICENSE'    ] = 'lut/assets/project/LICENSE',
      ['lut.assets.project.README_md'  ] = 'lut/assets/project/README.md',
      ['lut.assets.project.scripts.bind_lua'] = 'lut/assets/project/scripts/bind.lua',
      ['lut.assets.project.scripts.build_lua'] = 'lut/assets/project/scripts/build.lua',
      ['lut.assets.project.scripts.doc_lua'] = 'lut/assets/project/scripts/doc.lua',
      ['lut.assets.project.src.Foo_cpp'] = 'lut/assets/project/src/Foo.cpp',
      ['lut.assets.project.src.type_cpp'] = 'lut/assets/project/src/type.cpp',
      ['lut.assets.project.test.all_lua'] = 'lut/assets/project/test/all.lua',
      ['lut.assets.project.test.Foo_test_lua'] = 'lut/assets/project/test/Foo_test.lua',
      ['lut.assets.project.test.type_test_lua'] = 'lut/assets/project/test/type_test.lua',
      ['lut.assets.project.type.Foo_lua'] = 'lut/assets/project/type/Foo.lua',
      ['lut.assets.project.type.init_lua'] = 'lut/assets/project/type/init.lua',
    },
  },
}

