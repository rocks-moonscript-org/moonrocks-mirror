package = "enkoder"
version = "1.0-4"
source = {
	url = "git+https://github.com/RixInGithub/enkoder.git"
}
description = {
	summary = "",
	homepage = "https://github.com/RixInGithub/enkoder",
	license = "AGPL-v3.0"
}
build = {
	type = "builtin",
	modules = {
		["enkoder"] = "init.lua",
		["enkoder.srz"] = "srz/init.lua",
		["enkoder.srz.json"] = "srz/json.lua",
		["enkoder.srz.yaml"] = "srz/yaml.lua"
	}
}
dependencies = {
	"lua >= 5.3"
}
