--[[

 This is the LuaRocks rockspec for the LXSH module.

 Author: Peter Odding <peter@peterodding.com>
 Homepage: http://peterodding.com/code/lua/lxsh

]]

package = 'com.logiceditor.fork.LXSH'
version = '0.8.7.7.g1df4485-1'

source = {
  url = "git+ssh://git@github.com/logiceditor-com/lua-lxsh.git",
  branch = "0.8.7.7.g1df4485"
}

description = {
  summary = 'Lexing & syntax highlighting in Lua',
  detailed = [[
    LXSH is a collection of lexers and syntax highlighters written in Lua using
    the excellent pattern-matching library LPeg. The syntax highlighters can
    generate HTML, LaTeX (PDF) and RTF output.
  ]],
  homepage = 'http://peterodding.com/code/lua/lxsh',
  license = 'MIT',
}

dependencies = {
  'lua >= 5.1',
  'lpeg >= 0.9'
}

build = {
  type = 'builtin',
  modules = {
    ['com.logiceditor.fork.lxsh.init'] = 'src/init.lua',
    ['com.logiceditor.fork.lxsh.lexers.init'] = 'src/lexers/init.lua',
    ['com.logiceditor.fork.lxsh.lexers.lua'] = 'src/lexers/lua.lua',
    ['com.logiceditor.fork.lxsh.lexers.c'] = 'src/lexers/c.lua',
    ['com.logiceditor.fork.lxsh.lexers.bib'] = 'src/lexers/bib.lua',
    ['com.logiceditor.fork.lxsh.lexers.sh'] = 'src/lexers/sh.lua',
    ['com.logiceditor.fork.lxsh.highlighters.init'] = 'src/highlighters/init.lua',
    ['com.logiceditor.fork.lxsh.highlighters.lua'] = 'src/highlighters/lua.lua',
    ['com.logiceditor.fork.lxsh.highlighters.c'] = 'src/highlighters/c.lua',
    ['com.logiceditor.fork.lxsh.highlighters.bib'] = 'src/highlighters/bib.lua',
    ['com.logiceditor.fork.lxsh.highlighters.sh'] = 'src/highlighters/sh.lua',
    ['com.logiceditor.fork.lxsh.docs.lua'] = 'src/docs/lua.lua',
    ['com.logiceditor.fork.lxsh.docs.c'] = 'src/docs/c.lua',
    ['com.logiceditor.fork.lxsh.docs.bib'] = 'src/docs/bib.lua',
    ['com.logiceditor.fork.lxsh.formatters.html'] = 'src/formatters/html.lua',
    ['com.logiceditor.fork.lxsh.formatters.latex'] = 'src/formatters/latex.lua',
    ['com.logiceditor.fork.lxsh.formatters.rtf'] = 'src/formatters/rtf.lua',
    ['com.logiceditor.fork.lxsh.colors.earendel'] = 'src/colors/earendel.lua',
    ['com.logiceditor.fork.lxsh.colors.slate'] = 'src/colors/slate.lua',
    ['com.logiceditor.fork.lxsh.colors.wiki'] = 'src/colors/wiki.lua',
  },
  copy_directories = { 'etc', 'examples', 'test' },
}
