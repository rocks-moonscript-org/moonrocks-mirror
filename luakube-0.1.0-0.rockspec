package = "luakube"
version = "0.1.0-0"

source = {
	url = "git://github.com/f4z3r/luakube",
	tag = "v0.1.0-0",
}

description = {
	summary = "Kubernetes client library for Lua",
	detailed = [[
		LuaKube is a simple client library to access the Kubernetes API. It does not abstract much from the API, allowing for full control, but provides some convenience functions for quick scripting.

		This is a pre-1.0 release: stability is not guaranteed.
	]],
	homepage = "https://github.com/f4z3r/luakube",
	maintainer = "Jakob Beckmann <beckmann_jakob@hotmail.fr>",
	license = "MIT"
}

dependencies = {
	"lua >= 5.3, <= 5.4",
	"lyaml >= 6.2",
	"luajson >= 1.3",
	"luasocket >= 3.0rc1",
	"luasec >= 1.0",
	"base64 >= 1.5",
	"fun >= 0.1",
}

build = {
	type = "builtin",
	modules = {
		kube = "src/kube.lua",
		["kube.config"] = "src/kube/config.lua",
		["kube.api"] = "src/kube/api.lua",
		["kube.api.utils"] = "src/kube/api/utils.lua",
		["kube.api.objects"] = "src/kube/api/objects.lua",
		["kube.api.core_v1"] = "src/kube/api/core_v1.lua",
		["kube.api.batch_v1"] = "src/kube/api/batch_v1.lua",
		["kube.api.apps_v1"] = "src/kube/api/apps_v1.lua",
	}
}
