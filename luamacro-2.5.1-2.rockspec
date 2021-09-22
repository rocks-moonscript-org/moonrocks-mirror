local _MODREV, _SPECREV = '2.5.1', '-2'

package = 'luamacro'
version = _MODREV .. _SPECREV

description = {
   summary = 'A macro preprocessor for Lua',
   detailed = [[
      Provides intelligent lexical macros that can be scoped. By default it
      translates and runs code, keeping track of line numbers.
      LuaMacro 2 uses a LPeg lexical scanner and no longer needs the token filter
      patch.
   ]],
   homepage = 'http://github.com/gvvaughan/LuaMacro',
   license = 'MIT/X11',
}

source = {
   url = 'http://github.com/gvvaughan/LuaMacro/archive/' .. _MODREV .. '.zip',
   dir = 'LuaMacro-' .. _MODREV,
}

dependencies = {
   'lpeg ~= 0.11'
}

build = {
   type = 'builtin',
   install = {
      bin = {
         'luam',
      }
   },
   modules = {
      ['macro']           = 'macro.lua',
      ['macro.Getter']    = 'macro/Getter.lua',
      ['macro.TokenList'] = 'macro/TokenList.lua',
      ['macro.all']       = 'macro/all.lua',
      ['macro.assert']    = 'macro/assert.lua',
      ['macro.builtin']   = 'macro/builtin.lua',
      ['macro.clexer']    = 'macro/clexer.lua',
      ['macro.do']        = 'macro/do.lua',
      ['macro.forall']    = 'macro/forall.lua',
      ['macro.ifelse']    = 'macro/ifelse.lua',
      ['macro.lambda']    = 'macro/lambda.lua',
      ['macro.lc']        = 'macro/lc.lua',
      ['macro.lexer']     = 'macro/lexer.lua',
      ['macro.lib.class'] = 'macro/lib/class.lua',
      ['macro.lib.test']  = 'macro/lib/test.lua',
      ['macro.module']    = 'macro/module.lua',
      ['macro.try']       = 'macro/try.lua',
      ['macro.with']      = 'macro/with.lua',
   },
   copy_directories = {
      'tests'
   },
}

if _MODREV == 'git' then
   dependencies[#dependencies + 1] = 'ldoc'

   source = {
      url = 'git://github.com/gvvaughan/LuaMacro.git',
   }
end

