rockspec_format = "3.1"
package = "cppjieba"
version = "5.6.7-1"

description = {
	summary = "\229\159\186\228\186\142jieba-lua\231\154\132neovim\228\184\173\230\150\135\232\175\141\232\183\179\232\189\172",
	license = "GPL-3.0",
	homepage = "https://github.com/neo451/jieba.nvim",
}

dependencies = {
	"lua>=5.1",
	"vim",
	"wordmotion.nvim",
	"datafile",
}

build_dependencies = {
	"luanativeobjects",
	"luarocks-build-xmake",
}

source = {
	url = "https://github.com/neo451/jieba.nvim/archive/5.6.7.zip",
}

build = {
	type = "xmake",
	install = {
		conf = {
			["pos_dict/prob_trans.utf8"] = "etc/conf/pos_dict/prob_trans.utf8",
			["hmm_model.utf8"] = "etc/conf/hmm_model.utf8",
			["user.dict.utf8"] = "etc/conf/user.dict.utf8",
			["jieba.dict.utf8"] = "etc/conf/jieba.dict.utf8",
			["stop_words.utf8"] = "etc/conf/stop_words.utf8",
			["pos_dict/prob_start.utf8"] = "etc/conf/pos_dict/prob_start.utf8",
			["pos_dict/prob_emit.utf8"] = "etc/conf/pos_dict/prob_emit.utf8",
			["pos_dict/char_state_tab.utf8"] = "etc/conf/pos_dict/char_state_tab.utf8",
			["idf.utf8"] = "etc/conf/idf.utf8",
		},
	},
	copy_directories = {
		"plugin",
	},
}
