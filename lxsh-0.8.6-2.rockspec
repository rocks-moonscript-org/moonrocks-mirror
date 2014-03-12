package = "LXSH"
version = "0.8.6-2"
source = {
   url = "http://peterodding.com/code/lua/lxsh/downloads/lxsh-0.8.6-1.zip",
   md5 = "a9d4bd853f9756f8e8bfe0945b835161"
}
description = {
   summary = "Lexing & syntax highlighting in Lua",
   detailed = [[
    LXSH is a collection of lexers and syntax highlighters written in Lua using
    the excellent pattern-matching library LPeg. The syntax highlighters can
    generate HTML, LaTeX (PDF) and RTF output.
  ]],
   homepage = "http://peterodding.com/code/lua/lxsh",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1", "lpeg >= 0.9"
}
build = {
   type = "builtin",
   modules = {
      ['lxsh.colors.earendel'] = "src/colors/earendel.lua",
      ['lxsh.colors.slate'] = "src/colors/slate.lua",
      ['lxsh.colors.wiki'] = "src/colors/wiki.lua",
      ['lxsh.docs.bib'] = "src/docs/bib.lua",
      ['lxsh.docs.c'] = "src/docs/c.lua",
      ['lxsh.docs.lua'] = "src/docs/lua.lua",
      ['lxsh.formatters.html'] = "src/formatters/html.lua",
      ['lxsh.formatters.latex'] = "src/formatters/latex.lua",
      ['lxsh.formatters.rtf'] = "src/formatters/rtf.lua",
      ['lxsh.highlighters.bib'] = "src/highlighters/bib.lua",
      ['lxsh.highlighters.c'] = "src/highlighters/c.lua",
      ['lxsh.highlighters.init'] = "src/highlighters/init.lua",
      ['lxsh.highlighters.lua'] = "src/highlighters/lua.lua",
      ['lxsh.highlighters.sh'] = "src/highlighters/sh.lua",
      ['lxsh.init'] = "src/init.lua",
      ['lxsh.lexers.bib'] = "src/lexers/bib.lua",
      ['lxsh.lexers.c'] = "src/lexers/c.lua",
      ['lxsh.lexers.init'] = "src/lexers/init.lua",
      ['lxsh.lexers.lua'] = "src/lexers/lua.lua",
      ['lxsh.lexers.sh'] = "src/lexers/sh.lua"
   },
   copy_directories = {
      "etc", "examples"
   }
}
