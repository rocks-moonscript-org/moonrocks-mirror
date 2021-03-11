package = "markov-text"
version = "0.1-1"
source = {
	url = "git+https://github.com/taylordotfish/markov.lua.git"
}

description = {
	summary = "A Markov chain text generation library",
	detailed =
		"markov.lua (or markov-text) is a Markov chain text generation " ..
		"library. It works with Lua 5.1 and later.",
	homepage = "https://github.com/taylordotfish/markov.lua",
	license = "GPL-3.0-or-later"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		markov = "markov/init.lua",
		["markov.bits"] = "markov/bits.lua",
		["markov.chain"] = "markov/chain.lua",
		["markov.markov"] = "markov/markov.lua",
		["markov.sentinel"] = "markov/sentinel.lua",
		["markov.serialize"] = "markov/serialize.lua",
		["markov.version"] = "markov/version.lua"
	}
}
