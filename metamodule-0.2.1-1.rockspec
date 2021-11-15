rockspec_format = '3.0'
package = 'metamodule'
version = '0.2.1-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-metamodule.git',
    tag = "v0.2.1",
}
description = {
    summary = 'simple oop module for lua',
    homepage = 'https://github.com/mah0x211/lua-metamodule',
    license = 'MIT/X11',
    maintainer = 'Masatoshi Fukunaga'
}
dependencies = {
    'lua >= 5.1',
    'dump ~> 0.1',
    'stringex ~> 0.1',
}
build = {
    type = 'builtin',
    modules = {
        metamodule = 'metamodule.lua',
        ['metamodule.deepcopy'] = 'lib/deepcopy.lua',
        ['metamodule.eval'] = 'lib/eval.lua',
        ['metamodule.is'] = 'lib/is.lua',
        ['metamodule.normalize'] = 'lib/normalize.lua',
        ['metamodule.pkgname'] = 'lib/pkgname.lua',
        ['metamodule.seal'] = 'lib/seal.lua',
    }
}
