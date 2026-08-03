rockspec_format = "3.0"
package = "luant"
version = "0.1.1-1"

source = {
	url = "git+https://codeberg.org/vpsi/luant.git",
	tag = "v0.1.1"
}

description = {
	summary = "A lua native tools ui library for cross-platform program-making",
	detailed = [[
		luant drives the tcl/tk shared libraries already installed on the system
		through luajit's ffi, so you get real native widgets with no c bindings to
		compile. the api is small on purpose: ui.window, ui.row, ui.column,
		ui.label, ui.button.

		needs luajit, not plain lua. ffi is what talks to tcl and puc lua doesn't
		have one. luarocks can't say that in dependencies because luajit reports
		itself as lua 5.1, so require("luant") checks on startup and tells you to
		switch instead of blowing up somewhere confusing.

		also needs libtcl and libtk already on the system. most distros ship them
		as tk, windows gets them from the tcl/tk installer or from luajit for
		windows, and macos has them built in.

		linux and windows are tested. macos is not, nobody has run it there yet.
	]],
	homepage = "https://codeberg.org/vpsi/luant",
	license = "zlib",
	labels = { "ui", "gui", "tk", "ffi", "luajit" }
}

dependencies = {
	"lua >= 5.1, < 5.2"
}

build = {
	type = "builtin",
	modules = {
		["luant"] = "luant/init.lua",
		["luant.tcl"] = "luant/tcl.lua"
	}
}
