rockspec_format = '3.0'

package = 'lua-tree-sitter'
version = '0.1.0-1'

description = {
	summary = 'Lua bindings for Tree-sitter',
	detailed = 'Lua bindings for Tree-sitter',
	license = 'MIT',
	homepage = 'https://github.com/xcb-xwii/lua-tree-sitter',
	issues_url = 'https://github.com/xcb-xwii/lua-tree-sitter/issues',
	-- maintainer = '',
	-- labels = '',
}

source = {
	url = 'git+https://github.com/xcb-xwii/lua-tree-sitter',
	tag = 'v0.1.0',
}

build = {
	type = 'builtin',
	modules = {
		['lua_tree_sitter'] = {
			incdirs = { 'tree-sitter/lib/include', 'include' },
			sources = {
				'src/init.c',
				'src/language.c',
				'src/node.c',
				'src/parser.c',
				'src/point.c',
				'src/query/init.c',
				'src/query/capture.c',
				'src/query/cursor.c',
				'src/query/match.c',
				'src/query/quantified_capture.c',
				'src/query/runner.c',
				'src/range/init.c',
				'src/range/array.c',
				'src/tree.c',
				'src/util.c',
				'tree-sitter/lib/src/lib.c',
			},
		},
	},
	copy_directories = {
	},
}
