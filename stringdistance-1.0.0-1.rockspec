package = "StringDistance"
version = "1.0.0-1"
source = {
  url = "http://www.ccpa.puc-rio.br/software/stringdistance/download/stringdistance-1.0.tar.gz",
  md5 = "e880e4521c6876d9885bafceeada40e8",
}
description = {
	summary = "Damerau-Leveinshtein Distance",
	detailed = [[
		String Distance is a package that offers two algorithms to calculate string distances: Levenshtein and Damerau-Levenshtein.
	]],
	license = "MIT/X11",
	homepage = "http://www.ccpa.puc-rio.br/software/stringdistance"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		stringdistance = "src/stringdistance.c",
	},
	copy_directories = {
		"tests",
		"doc",
	},
}
