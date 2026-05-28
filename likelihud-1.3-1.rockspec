local package_name      = 'likelihud'
local package_version   = '1.3'
local rockspec_revision = '1'

rockspec_format = '3.0'

package = package_name
version = package_version .. '-' .. rockspec_revision

source = {
   url = 'git+https://github.com/LRDPRDX/LikeliHUD.git',
   tag = 'v' .. package_version,
}

description = {
   summary = 'A simple UI library for LOVE2D',
   detailed = [[
    A simple UI library for the LOVE2D framework with basic types:
        * Image
        * Label
        * Layout
        * Rectangle
        * Stack
        * ImageButton
   ]],
   homepage = 'https://lrdprdx.github.io/LikeliHUD',
   license  = 'MIT <http://opensource.org/licenses/MIT>',
}

dependencies = {
   'lua      >= 5.1',
   'subclass >= 1.0',
}

build = {
   type = 'builtin',
   modules = {
      ['likelihud']             = 'likelihud/init.lua',
      ['likelihud.Block']       = 'likelihud/Block.lua',
      ['likelihud.Image']       = 'likelihud/Image.lua',
      ['likelihud.Label']       = 'likelihud/Label.lua',
      ['likelihud.Layout']      = 'likelihud/Layout.lua',
      ['likelihud.Rectangle']   = 'likelihud/Rectangle.lua',
      ['likelihud.Stack']       = 'likelihud/Stack.lua',
      ['likelihud.ImageButton'] = 'likelihud/ImageButton.lua',
      ['likelihud.utils']       = 'likelihud/utils.lua',
   },
}
