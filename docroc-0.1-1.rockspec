 package = "docroc"
 version = "0.1-1"
 source = {
    url = "git://github.com/vzhong/docroc",
    tag = "v0.1",
 }
 description = {
    summary = "Tools for generating and parsing Lua documentation for Mkdocs.",
    detailed = [[
      This package contains libraries to generate and parse Lua documentation.
      The binary included can be used to generate markdown files usable for Mkdocs and Readthedocs.
    ]],
    homepage = "http://vzhong.gitub.io/docroc",
    license = "MIT/X11"
 }
 dependencies = {
    "yaml",
    "penlight",
 }
 build = {
    type = "builtin",
    modules = {
       docroc = "src/docroc.lua",
       ["docroc.writer"] = "src/writer.lua",
    },
 }
