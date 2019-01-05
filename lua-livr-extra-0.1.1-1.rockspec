package = 'lua-LIVR-extra'
version = '0.1.1-1'
source = {
    url = 'https://framagit.org/fperrad/lua-LIVR-extra/raw/releases/lua-livr-extra-0.1.1.tar.gz',
    md5 = 'e6647c77097ed5a4a80aec5ca2da73e3',
    dir = 'lua-LIVR-extra-0.1.1',
}
description = {
    summary = "more LIVR rules",
    detailed = "see <http://livr-spec.org>",
    homepage = 'https://fperrad.frama.io/lua-LIVR-extra',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lua-livr >= 0.2.0',
}
build = {
    type = 'builtin',
    modules = {
        ['LIVR.Rules.Extra']        = 'src/LIVR/Rules/Extra.lua',
    },
    copy_directories = { 'docs', 'test' },
}
