package = "lcmark"
version = "0.29.0-3"
source = {
    url = "git://github.com/jgm/lcmark",
    tag = "0.29.0"
}
description = {
    summary = [[A command-line CommonMark converter with flexible
      features, and a lua module that exposes these features.]],
    detailed = [[lcmark does what the cmark program does,
      with the following enhancements:
      (1) Support for YAML metadata at the top of the document.
      The metadata is parsed as CommonMark and returned in
      a table (dictionary) that will set template variables.
      (2) Support for templates, which add headers
      and footers around the body of the document, and can
      include variables defined in the metadata.
      (3) Support for filters, which allow the document to be
      transformed between parsing and rendering, making possible
      a large number of customizations.]],
    homepage = "https://github.com/jgm/lcmark",
    license = "BSD2",
    maintainer = "John MacFarlane <jgm@berkeley.edu>",
}
dependencies = {
   "lua >= 5.1",
   "cmark >= 0.29.0",
   "yaml >= 1.1",
   "lpeg >= 0.12",
   "optparse >= 1.0.1",
}
build = {
    type = "builtin",
    modules = {
        lcmark = "lcmark.lua"
    },
    install = {
        bin = { lcmark = "bin/lcmark" }
    }
}
