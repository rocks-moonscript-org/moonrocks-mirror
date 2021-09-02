local _MODREV, _SPECREV = '0.1', '-1'
rockspec_format = "3.0"
package = 'lush.nvim'
version = _MODREV .. _SPECREV

description = {
   summary = 'Define Neovim themes as a DSL in lua, with real-time feedback.',
   labels = { "neovim" },
   detailed = [[
	Lush is a colorscheme creation aid, written in Lua, for Neovim.
   ]],
   homepage = 'https://github.com/rktjmp/lush.nvim',
   license = 'MIT/X11',
}

dependencies = {
   'lua >= 5.1, < 5.4',
}

source = {
   url = 'http://github.com/teto/lush.nvim/archive/v' .. _MODREV .. '.zip',
   dir = 'lush.nvim-' .. _MODREV,
}

if _MODREV == 'scm' then
   source = {
      url = 'git://github.com/teto/lush.nvim',
   }
end

build = {
   type = 'builtin',
   modules = {
	   ['lush'] = 'lua/lush.lua',
	   ['lush.hsl.convert'] = 'lua/lush/hsl/convert.lua',
	   ['lush.vivid.hsl.convert'] = 'lua/lush/vivid/hsl/convert.lua',
	   ['lush.vivid.hsl.type'] = 'lua/lush/vivid/hsl/type.lua',
	   ['lush.vivid.hsluv.convert'] = 'lua/lush/vivid/hsluv/convert.lua',
	   ['lush.vivid.hsluv.lib'] = 'lua/lush/vivid/hsluv/lib.lua',
	   ['lush.vivid.hsluv.type'] = 'lua/lush/vivid/hsluv/type.lua',
	   ['lush.vivid.rgb.convert'] = 'lua/lush/vivid/rgb/convert.lua',
	   ['lush.vivid.hsl_like'] = 'lua/lush/vivid/hsl_like.lua',
	   ['lush.compiler'] = 'lua/lush/compiler.lua',
	   ['lush.errors'] = 'lua/lush/errors.lua',
	   ['lush.hsl'] = 'lua/lush/hsl.lua',
	   ['lush.ify'] = 'lua/lush/ify.lua',
	   ['lush.math'] = 'lua/lush/math.lua',
	   ['lush.parser'] = 'lua/lush/parser.lua',
   },
}

