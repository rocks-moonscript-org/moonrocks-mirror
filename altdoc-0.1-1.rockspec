package = "altdoc"
version = "0.1-1"
description = {
  summary = "Language-agnostic documentation generator",
  detailed = [[A language-agnostic documentation generator that relies on MkDocs and Highlight, extracting Markdown comments from your code and creating highlighted versions of your source code (which you can reference from within your doc comments).]],
  homepage = "https://github.com/daelvn/altdoc",
}
dependencies = { "argparse", "filekit", "runkit",  }
source = {
  url = "git://github.com/daelvn/altdoc.git",
  tag = "v0.1",
}
build = {
  type = "none",
  install = {
    bin = { ["altdoc"] = "altdoc.lua", },
  }
}
