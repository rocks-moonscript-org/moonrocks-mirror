package = 'faker'
version = '0.0.1-1'

source = {
	url = 'git://github.com/hector-vido/lua-faker.git',
	tag = "0.0.1-1"
}

description = {
	summary = 'Faker is a lua library that generates fake data for you.',
	detailed = [[
Faker is a lua library that generates fake data for you.
Whether you need to bootstrap your database, create good-looking XML documents, fill-in your persistence to stress test it, or anonymize data taken from a production service, Faker is for you.
Faker is heavily inspired by PHP Faker, Perl Faker, Ruby Faker and by Python Faker.
]],
	homepage = 'github.com/hector-vido/lua-faker',
	license = 'MIT'
}

dependencies = {
	'lua >= 5.1',
}

build = {
	type = 'none',
	install = {
		lua = {
			['faker.init'] = 'faker/init.lua',
			['faker.generators.en_US'] = 'faker/generators/en_US.lua',
			['faker.generators.pt_BR'] = 'faker/generators/pt_BR.lua',
			['faker.data.en_US.firstnames-feminine'] = 'faker/data/en_US/firstnames-feminine.lua',
			['faker.data.en_US.surnames'] = 'faker/data/en_US/surnames.lua',
			['faker.data.en_US.countries'] = 'faker/data/en_US/countries.lua',
			['faker.data.en_US.cities'] = 'faker/data/en_US/cities.lua',
			['faker.data.en_US.states'] = 'faker/data/en_US/states.lua',
			['faker.data.en_US.firstnames-masculine'] = 'faker/data/en_US/firstnames-masculine.lua',
			['faker.data.pt_BR.firstnames_male'] = 'faker/data/pt_BR/firstnames_male.lua',
			['faker.data.pt_BR.countries'] = 'faker/data/pt_BR/countries.lua',
			['faker.data.pt_BR.cities'] = 'faker/data/pt_BR/cities.lua',
			['faker.data.pt_BR.states'] = 'faker/data/pt_BR/states.lua',
			['faker.data.pt_BR.surnames'] = 'faker/data/pt_BR/surnames.lua',
			['faker.data.pt_BR.firstnames_female'] = 'faker/data/pt_BR/firstnames_female.lua'
		}
	}
}
