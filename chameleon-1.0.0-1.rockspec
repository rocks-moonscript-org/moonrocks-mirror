package = "chameleon"
version = "1.0.0-1"
source = {
	url = "git+https://github.com/Rorkh/chameleon"
}
description = {
	summary = "Lua sqlite ORM",
	homepage = "https://github.com/Rorkh/chameleon",
	maintainer = "Rorkh <kremlebotone@gmail.com>"
}
dependencies = {
	"lsqlite3complete >= 0.9.5-1"
}
build = {
	type = "builtin",
	modules = {
		chameleon = "src/ChameleonDatabase.lua"
	}
}
