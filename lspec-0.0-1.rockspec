package = 'lspec'
version = '0.0-1'

source = {
  url = '',
  dir = 'lspec'
}

description = {
  summary = 'Jasmine-style testing framework',
  detailed = [[
    Jasmine-style testing framework.
  ]],
  homepage = 'https://bitbucket.org/ToadJamb/lua_lspec',
  license = 'MIT'
}

dependencies = {
  'lua >= 5.1',
  'luafilesystem >= 1.5.0',
  'ansicolors >= 1.0-1',
}

build = {
  type = 'builtin',

  modules = {
    ['lspec.core']                     = 'lib/lspec/core.lua',
    ['lspec.init']                     = 'lib/lspec/init.lua',
    ['lspec.faker']                    = 'lib/lspec/faker.lua',
    ['lspec.assertions']               = 'lib/lspec/assertions.lua',
    ['lspec.utility']                  = 'lib/lspec/utility.lua',
    ['lspec.scope']                    = 'lib/lspec/scope.lua',
    ['lspec.spec']                     = 'lib/lspec/spec.lua',
    ['lspec.runner']                   = 'lib/lspec/runner.lua',
    ['lspec.spec_model']               = 'lib/lspec/spec_model.lua',
    ['lspec.expectation_target']       = 'lib/lspec/expectation_target.lua',
    ['lspec.factories.matcher']        = 'lib/lspec/factories/matcher.lua',
    ['lspec.factory']                  = 'lib/lspec/factory.lua',
    ['lspec.spy']                      = 'lib/lspec/spy.lua',
    ['lspec.mock']                     = 'lib/lspec/mock.lua',
    ['lspec.matchers.be_a']            = 'lib/lspec/matchers/be_a.lua',
    ['lspec.matchers.be_a_function']   = 'lib/lspec/matchers/be_a_function.lua',
    ['lspec.matchers.be_a_number']     = 'lib/lspec/matchers/be_a_number.lua',
    ['lspec.matchers.be_a_string']     = 'lib/lspec/matchers/be_a_string.lua',
    ['lspec.matchers.be_a_table']      = 'lib/lspec/matchers/be_a_table.lua',
    ['lspec.matchers.be_called']       = 'lib/lspec/matchers/be_called.lua',
    ['lspec.matchers.be_called_with']  = 'lib/lspec/matchers/be_called_with.lua',
    ['lspec.matchers.be_greater_than'] = 'lib/lspec/matchers/be_greater_than.lua',
    ['lspec.matchers.be_greater_than_or_equal_to'] = 'lib/lspec/matchers/be_greater_than_or_equal_to.lua',
    ['lspec.matchers.be_less_than_or_equal_to'] = 'lib/lspec/matchers/be_less_than_or_equal_to.lua',
    ['lspec.matchers.be_less_than']    = 'lib/lspec/matchers/be_less_than.lua',
    ['lspec.matchers.be_nil']          = 'lib/lspec/matchers/be_nil.lua',
    ['lspec.matchers.equal']           = 'lib/lspec/matchers/equal.lua',
    ['lspec.matchers.have']            = 'lib/lspec/matchers/have.lua',
    ['lspec.matchers.have_field']      = 'lib/lspec/matchers/have_field.lua',
    ['lspec.matchers.have_function']   = 'lib/lspec/matchers/have_function.lua',
    ['lspec.matchers.have_interface']  = 'lib/lspec/matchers/have_interface.lua',
    ['lspec.matchers.match']           = 'lib/lspec/matchers/match.lua',
    ['lspec.matchers.match_array']     = 'lib/lspec/matchers/match_array.lua',
    ['lspec.matchers.raise_error']     = 'lib/lspec/matchers/raise_error.lua',
    ['lspec.matchers.warn_about']      = 'lib/lspec/matchers/warn_about.lua',
    ['lspec.matchers.include']         = 'lib/lspec/matchers/include.lua',
    ['lspec.matchers.be_empty']        = 'lib/lspec/matchers/be_empty.lua',
    ['lspec.stack_trace_parser']       = 'lib/lspec/stack_trace_parser.lua',
  },

  install = {
    bin = {
      ['lspec']        = 'bin/lspec',
      --['lspec.bat']    = 'bin/lspec.bat',
      ['lspec_runner'] = "bin/lspec_runner",
    }
  }
}
