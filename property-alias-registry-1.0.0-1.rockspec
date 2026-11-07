rockspec_format = '3.0'
package = 'property-alias-registry'
version = '1.0.0-1'
source = {
  url = 'https://github.com/novasia-estate/property-alias-registry/archive/refs/tags/v1.0.0.tar.gz',
  dir = 'property-alias-registry-1.0.0'
}
description = {
  summary = 'Explicit scoped property aliases with multilingual UTF-8 preservation',
  detailed = [[
A dependency-free registry for existing property identifiers and their explicitly
authored aliases. Resolves known labels within a supplied scope, retains original
spellings and provenance, and returns ambiguity rather than choosing between
conflicting identifiers. Includes collision auditing, an immutable extension API,
synthetic examples and behavioral checks. Normalization is deliberately limited:
ASCII case, selected punctuation and spaces; no transliteration or fuzzy merge.
Developed by NovAsia Estate: https://novasia.estate/
Source, examples and full documentation:
https://github.com/novasia-estate/property-alias-registry
]],
  homepage = 'https://novasia.estate/',
  license = 'MIT',
  labels = {'data', 'i18n', 'search', 'real-estate'}
}
dependencies = {'lua >= 5.1, < 5.5'}
build = {
  type = 'builtin',
  modules = {
    property_alias = 'lua/property_alias.lua',
    ['property_alias.key'] = 'lua/property_alias/key.lua',
    ['property_alias.registry'] = 'lua/property_alias/registry.lua'
  },
  copy_directories = {'docs', 'examples', 'tests'}
}
