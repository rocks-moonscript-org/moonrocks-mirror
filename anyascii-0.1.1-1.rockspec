rockspec_format = '3.0'
package = 'AnyAscii'
version = '0.1.1-1'
source = {
    url = 'git+https://codeberg.org/fita-slovo/lua-anyascii',
    tag = 'v0.1.1'
}
description = {
    summary = 'Unicode to ASCII transliteration.',
    detailed = [[
        This module wraps AnyAscii C implementation, providing
        Unicode → ASCII characters conversion for practically
        all Unicode characters.
    ]],
    homepage = 'https://codeberg.org/fita-slovo/lua-anyascii',
    license = '0BSD',
    labels = {'unicode'}
}
dependencies = {
    'lua >= 5.3'
}
build = {
    type = 'builtin',
    modules = {
        anyascii = {'src/luaanyascii.c', 'src/anyascii/anyascii.c', 'src/anyascii/utf8.c'}
    }
}
