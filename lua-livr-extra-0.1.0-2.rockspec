package = 'lua-LIVR-extra'
version = '0.1.0-2'
source = {
    url = 'https://framagit.org/fperrad/lua-LIVR-extra/raw/releases/lua-livr-extra-0.1.0.tar.gz',
    md5 = '8c7f7882fdcc1132ee6c903fe1a2796d',
    dir = 'lua-LIVR-extra-0.1.0',
}
description = {
    summary = "more LIVR rules",
    detailed = "see <http://livr-spec.org>",
    homepage = 'http://fperrad.frama.io/lua-LIVR-extra',
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
