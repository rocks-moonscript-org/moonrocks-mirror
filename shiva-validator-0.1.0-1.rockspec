package = 'shiva-validator'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Rule-based data validator for Lua 5.4',
   detailed = [[
      Validates tables of data against declarative rule sets, inspired by
      Laravel's validator. Rules are pipe-delimited strings or tables:
      'required|string|min:3|max:100'. Built-in rules cover type checking
      (string, number, integer, boolean, table, array), size constraints
      (min, max, size, between), and format validation (alpha, alphaNum,
      alphaDash, numeric, email, url, in, notIn). Custom rules can be
      registered with Validator.extend(). Returns a ValidationResult with
      passes(), fails(), errors(), firstError(), and allErrors().
   ]],
   homepage = 'https://github.com/adrianmejias/shiva-fw',
   license  = 'MIT',
}

dependencies = {
   'lua >= 5.4',
}

build = {
   type    = 'builtin',
   modules = {
      ['shiva.validator'] = 'libs/validator/init.lua',
   },
}
