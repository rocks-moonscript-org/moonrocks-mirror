package = 'fp'
version = '0.0.1-1'
source = {
   url = 'git://github.com/dawee/lua-fp',
   tag = 'v0.0.1-1'
}
description = {
  summary = 'Functional programming library for Lua',
  detailed = [[
    Functional Programming library for Lua.
    Immutable, auto-curried, iteratee-first and data-last methods.
  ]],
  homepage = 'https://github.com/dawee/lua-fp',
  license = 'MIT'
}
build = {
  type = "builtin",
  modules = {
    ['fp.clone'] = 'fp/clone.lua',
    ['fp.concat'] = 'fp/concat.lua',
    ['fp.core.loop'] = 'fp/core/loop.lua',
    ['fp.curry'] = 'fp/curry.lua',
    ['fp.each'] = 'fp/each.lua',
    ['fp.find'] = 'fp/find.lua',
    ['fp.is.boolean'] = 'fp/is/boolean.lua',
    ['fp.is.false'] = 'fp/is/false.lua',
    ['fp.is.falsy'] = 'fp/is/falsy.lua',
    ['fp.is.function'] = 'fp/is/function.lua',
    ['fp.is.init'] = 'fp/is/init.lua',
    ['fp.is.nil'] = 'fp/is/nil.lua',
    ['fp.is.number'] = 'fp/is/number.lua',
    ['fp.is.string'] = 'fp/is/string.lua',
    ['fp.is.table'] = 'fp/is/table.lua',
    ['fp.is.true'] = 'fp/is/true.lua',
    ['fp.is.truthy'] = 'fp/is/truthy.lua',
    ['fp.iterate'] = 'fp/iterate.lua',
    ['fp.map'] = 'fp/map.lua',
    ['fp.merge'] = 'fp/merge.lua',
    ['fp.pipe'] = 'fp/pipe.lua',
    ['fp.reduce'] = 'fp/reduce.lua',
    ['fp.set'] = 'fp/set.lua',
    ['fp.split'] = 'fp/split.lua'
   }
}
