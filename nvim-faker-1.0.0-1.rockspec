package = 'nvim-faker'
version = '1.0.0-1'
source = {
  url = 'git+ssh://git@github.com/tehdb/nvim-faker.git',
}
description = {
  summary = 'A neovim plugin for generating fake data.',
  detailed = 'A neovim plugin for generating fake data. It can be used to create random names, addresses, phone numbers, and other types of data, which is useful for testing and development purposes. It uses [@tehdb/faker-cli](https://www.npmjs.com/package/@tehdb/faker-cli) under the hood which is based on [Faker](https://fakerjs.dev)',
  homepage = 'https://github.com/tehdb/nvim-faker',
  license = 'MIT',
}
dependencies = {
  'lua ~> 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['nvim-faker.faker-cli'] = 'lua/nvim-faker/faker-cli.lua',
    ['nvim-faker.init'] = 'lua/nvim-faker/init.lua',
  },
  copy_directories = {
    'doc',
  },
}
