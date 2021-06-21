package = "vklib"
version = "1.0.0-0"
source = {
	url = "git+https://github.com/Rorkh/vklib-turbo"
}
description = {
	summary = "vklib (https://github.com/LuaFan2/vklib) implementation for turbo (https://github.com/kernelsauce/turbo)",
	homepage = "https://github.com/Rorkh/vklib-turbo",
	maintainer = "Rorkh <kremlebotone@gmail.com>"
}
dependencies = {
	"turbo >= 2.1"
}
build = {
	type = "builtin",
	modules = {
		vklib = "src/vklib.lua",
	}
}
