rockspec_format = "3.0"
package = "lrc"
version = "1.2.0-1"
source = {
	url = "https://codeberg.org/lrocket/lrc/archive/tags/v1.2.0.zip",
	dir = "lrc"
}
description = {
	summary = "A compiler for the Lua Programming Language",
	homepage = "https://codeberg.org/lrocket/lrc",
	license = "MIT"
}
dependencies = {
	"argparse ~> 0.7",
	"sfs ~> 0.2, >= 0.2.4",
	"lua-term ~> 0.8",
	"datafile ~> 0.11",
	"compat53 ~> 0.14"
}
build = {
	type = "builtin",
	modules = {
		["lrocket.abi"] = "lrocket/abi.lua",
		["lrocket.api"] = "lrocket/api.lua",
		["lrocket.build.executable"] = "lrocket/build/executable.lua",
		["lrocket.build.executable-c"] = "lrocket/build/executable-c.lua",
		["lrocket.build.init"] = "lrocket/build/init.lua",
		["lrocket.build.lra"] = "lrocket/build/lra.lua",
		["lrocket.build.lua"] = "lrocket/build/lua.lua",
		["lrocket.build.shared"] = "lrocket/build/shared.lua",
		["lrocket.build.shared-c"] = "lrocket/build/shared-c.lua",
		["lrocket.cfmt"] = "lrocket/cfmt.lua",
		["lrocket.cpreprocessor"] = "lrocket/cpreprocessor.lua",
		["lrocket.cutils"] = "lrocket/cutils.c",
		["lrocket.environ"] = "lrocket/environ.lua",
		["lrocket.genc"] = "lrocket/genc.lua",
		["lrocket.init"] = "lrocket/init.lua",
		["lrocket.lang.c"] = "lrocket/lang/c.lua",
		["lrocket.lang.lua"] = "lrocket/lang/lua.lua",
		["lrocket.lang.shared"] = "lrocket/lang/shared.lua",
		["lrocket.lang.static"] = "lrocket/lang/static.lua",
		["lrocket.lang.teal"] = "lrocket/lang/teal.lua",
		["lrocket.loader"] = "lrocket/loader.lua",
		["lrocket.log"] = "lrocket/log.lua",
		["lrocket.lra"] = "lrocket/lra.lua",
		["lrocket.lua"] = "lrocket/lua.lua",
		["lrocket.package"] = "lrocket/package.lua",
		["lrocket.routines"] = "lrocket/routines.lua",
		["lrocket.rules"] = "lrocket/rules.lua",
		["lrocket.toolchain.gnu"] = "lrocket/toolchain/gnu.lua",
		["lrocket.toolchain.init"] = "lrocket/toolchain/init.lua",
		["lrocket.toolchain.interface"] = "lrocket/toolchain/interface.lua",
		["lrocket.toolchain.msvc"] = "lrocket/toolchain/msvc.lua",
		["lrocket.utils"] = "lrocket/utils.lua",
		["lrocket.version"] = "lrocket/version.lua"
	},
	copy_directories = {
		"loader"
	},
	install = {
		bin = {
			lra = "cmd/lra.lua",
			lrc = "cmd/lrc.lua"
		}
	}
}
test_dependencies = {
	"luassert ~> 1",
	"ansicolors ~> 1",
	"luacov-reporter-lcov ~> 0.2"
}
test = {
	type = "command",
	script = "tests/run.lua"
}
