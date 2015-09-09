package = "StarWarsNames"
version = "1.0-1"

build = {
	type = "builtin",
	modules = {
		startwarsnames = "src/startwarsnames.lua",
	}
}

dependencies = {
	"lua >= 5.1",
}

description = {
	license = "MIT",
	summary = "Get a random Star Wars name",
	detailed = "Get a random Star Wars name",
	homepage = "https://github.com/Perkovec/starwars-names-lua",
}

source = {
	url = "git://github.com/Perkovec/starwars-names-lua",
  	tag = "v1.0"
}
