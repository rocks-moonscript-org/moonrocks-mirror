rockspec_format = "3.0"
package = "lua-gltf"
version = "1.0.0-2"
description = {
	summary = "glTF loader",
	license = "zlib",
	homepage = "https://github.com/leonardus/lua-gltf",
	issues_url = "https://github.com/leonardus/lua-gltf/issues",
	maintainer = "leonardus <leonardus@leonardus.me>"
}
dependencies = {
	"lua >= 5.3, < 6",
	"lua-cjson ~> 2",
	"base64 ~> 1"
}
source = {
	url = "git://github.com/leonardus/lua-gltf"
}
build = {
	["type"] = "builtin",
	modules = {
		gltf = "gltf.lua"
	}
}
