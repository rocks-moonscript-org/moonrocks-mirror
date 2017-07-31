package = "lunadoc"
version = "0.1-2"

source = {
  url = "git://github.com/cuddlyrobot/lunadoc.git",
  tag = "0.1"
}

description = {
  summary = "A better documentation generator for Moonscript",
  detailed = [[
     Generate documentation for your Moonscript projects.
  ]],
  homepage = "http://github.com/cuddlyrobot/lunadoc",
  license = "MIT/X11"
}

dependencies = {
  "lua ~> 5.1",
  "discount",
  "moonscript",
  "etlua",
  "loadkit",
  "luafilesystem",
}

build = {
  type = "command",
  build_command = "moonc .",
  modules = {
    ["lunadoc.init"] = "modules/lunadoc/init.lua",
    ["lunadoc.indent"] = "modules/lunadoc/indent.lua",
    ["lunadoc.gsplit"] = "modules/lunadoc/gsplit.lua",
    ["lunadoc.doc_moon"] = "modules/lunadoc/doc_moon.lua"
  },

  install = { 
    bin = { "lunadoc" },
    lua = {
      ["lunadoc.init"] = "modules/lunadoc/init.lua",
      ["lunadoc.indent"] = "modules/lunadoc/indent.lua",
      ["lunadoc.gsplit"] = "modules/lunadoc/gsplit.lua",
      ["lunadoc.doc_moon"] = "modules/lunadoc/doc_moon.lua",
      ["lunadoc.templates.html"] = "modules/lunadoc/templates/html.elua"
    },
  }
}
