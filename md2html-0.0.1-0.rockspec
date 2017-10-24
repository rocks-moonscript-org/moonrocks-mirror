package = "md2html"
version = "0.0.1-0"

description = {
  summary = "markdown to html converter that embeds markdown content into a html template",
  homepage = "https://github.com/esno/md2html",
  license = "MIT",
}

source = {
  url = "git+https://github.com/esno/md2html.git",
  tag = "v0.0.1",
}

dependencies = {
  "luafilesystem",
  "etlua",
  "discount",
}

build = {
  type = "builtin",
  modules = {},
  install = {
    bin = { "src/md2html" }
  },
}
