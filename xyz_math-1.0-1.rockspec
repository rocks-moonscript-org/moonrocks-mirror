package = "xyz_math"
version = "1.0-1"
source = {
	url = "git://github.com/xyz-ai-dev/xyz_math",
	tag = "v1.0"
}
description = {
	summary = "A 3D math library for Lua",
	detailed = [[
		XYZ Math is a 3D mathematics library for Lua.
		It provides vector, matrix, and geometry primitives with a clean,
		object-oriented API. Includes 2D, 3D, and 4D vectors, 3x3 and 4x4
		matrices, rays, planes, bounding volumes, and utility functions.
	]],
	homepage = "https://github.com/xyz-ai-dev/xyz_math",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		["xyz_math"] = "xyz_math.lua"
	}
} 