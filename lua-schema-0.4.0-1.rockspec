package = 'lua-schema'
version = '0.4.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-schema/raw/releases/lua-schema-0.4.0.tar.gz',
    md5 = '90e9b7b01e47bfa4499a34fccd9e4f86',
    dir = 'lua-schema-0.4.0',
}
description = {
    summary = "JSON Schema data validator",
    detailed = [[
lua-schema is a JSON Schema (classical & modern) data validator.

It validates data from a JSON instance or from any equivalent data model,
for example CBOR, Message Pack, UBJSON or just plain Lua.
    ]],
    homepage = 'https://fperrad.frama.io/lua-schema',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lpeg',
--    'idn2',  -- format: idn-email & idn-hostname
--    'lrexlib-pcre2',  -- keyword: pattern & patternProperties
}
build = {
    type = 'builtin',
    modules = {
        ['schema']                      = 'src/schema.lua',
        ['schema.core']                 = 'src/schema/core.lua',
        ['schema.format']               = 'src/schema/format.lua',
        ['schema.keyword']              = 'src/schema/keyword.lua',
        ['schema.openapi']              = 'src/schema/openapi.lua',
        ['schema.utils']                = 'src/schema/utils.lua',
        ['schema.dialect.draft-04']     = 'src/schema/dialect/draft-04.lua',
        ['schema.dialect.draft-06']     = 'src/schema/dialect/draft-06.lua',
        ['schema.dialect.draft-07']     = 'src/schema/dialect/draft-07.lua',
        ['schema.dialect.draft2019-09'] = 'src/schema/dialect/draft2019-09.lua',
        ['schema.dialect.draft2020-12'] = 'src/schema/dialect/draft2020-12.lua',
        ['schema.dialect.oas31']        = 'src/schema/dialect/oas31.lua',
        ['schema.dialect.oas32']        = 'src/schema/dialect/oas32.lua',
        ['schema.dialect.v1-2026']      = 'src/schema/dialect/v1-2026.lua',
    },
    copy_directories = { 'docs', 'test' },
}
