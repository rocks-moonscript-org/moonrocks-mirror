package = 'lua-LIVR'
version = '0.5.2-1'
source = {
    url = 'https://framagit.org/fperrad/lua-LIVR/raw/releases/lua-livr-0.5.2.tar.gz',
    md5 = '776b8e99bcd4f718cfe6f46a81e5f428',
    dir = 'lua-LIVR-0.5.2',
}
description = {
    summary = "Lightweight validator supporting Language Independent Validation Rules Specification (LIVR)",
    detailed = "see <https://livr-spec.org/>",
    homepage = 'https://fperrad.frama.io/lua-LIVR',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
--    'luautf8',  -- modifiers: to_lc & to_uc
--    'lrexlib-pcre2',  -- string: like
}
build = {
    type = 'builtin',
    modules = {
        ['LIVR']                    = 'src/LIVR.lua',
        ['LIVR.Validator']          = 'src/LIVR/Validator.lua',
        ['LIVR.helpers']            = 'src/LIVR/helpers.lua',
        ['LIVR.Rules.Common']       = 'src/LIVR/Rules/Common.lua',
        ['LIVR.Rules.Meta']         = 'src/LIVR/Rules/Meta.lua',
        ['LIVR.Rules.Modifiers']    = 'src/LIVR/Rules/Modifiers.lua',
        ['LIVR.Rules.Numeric']      = 'src/LIVR/Rules/Numeric.lua',
        ['LIVR.Rules.Special']      = 'src/LIVR/Rules/Special.lua',
        ['LIVR.Rules.String']       = 'src/LIVR/Rules/String.lua',
    },
    copy_directories = { 'docs', 'test' },
}
