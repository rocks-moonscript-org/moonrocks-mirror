rockspec_format = '3.0'
package = 'Lettext'
version = '0.1-1'
source = {
    url = 'git+https://codeberg.org/fita-slovo/lettext',
    tag = 'v0.1'
}
description = {
    summary = 'Gettext for Lua.',
    detailed = [[
        Lettext is an internationalization library using Gettext
        translation catalogs in text file format (.po/.pot).

        Features:
        * Fast parsing of Gettext catalogs;
        * Catalogs editing (including partial editing of header data) and writing to files;
        * Written in pure Lua with 0 dependencies;
        * Plural forms support;
        * fuzzy and lua-format flags awareness;
        * Catalogs merging.
    ]],
    homepage = 'https://codeberg.org/fita-slovo/lettext',
    license = '0BSD',
    labels = {'i18n'}
}
dependencies = {
    'lua >= 5.3'
}
build = {
    type = 'builtin',
    modules = {
        ['lettext.init'] = 'lettext/init.lua',
        ['lettext.catalog'] = 'lettext/catalog.lua',
        ['lettext.entry'] = 'lettext/entry.lua',
        ['lettext.headerdata'] = 'lettext/headerdata.lua',
        ['lettext.languages'] = 'lettext/languages.lua',
        ['lettext.parser'] = 'lettext/parser.lua',
        ['lettext.utils'] = 'lettext/utils.lua',
        ['lettext.writer'] = 'lettext/writer.lua',
    }
}
