rockspec_format = "3.0"

package = "ltreesitter-ts"
version = "0.0.1-1"

source = {
   url = "git+https://github.com/FourierTransformer/ltreesitter-ts",
   tag = "0.0.1",
}

description = {
   homepage = "https://github.com/FourierTransformer/ltreesitter-ts",
   license = "MIT",
   summary = "Treesitter parsing library bindings for Lua",
   detailed = [[This combines [ltreesitter](https://github.com/EuclidianAce/ltreesitter) and the [tree-sitter](https://github.com/tree-sitter/tree-sitter) library together to have an easy LuaRocks based install for tree sitter parsing. There are no other enhancements to either library. It can be imported as just `ltreesitter`.]],
}

build = {
   type = "builtin",
   modules = {
      ltreesitter = {
         sources = {
            "ltreesitter/csrc/dynamiclib.c",
            "ltreesitter/csrc/luautils.c",
            "ltreesitter/csrc/object.c",
            "ltreesitter/csrc/query.c",
            "ltreesitter/csrc/tree.c",
            "ltreesitter/csrc/types.c",
            "ltreesitter/csrc/ltreesitter.c",
            "ltreesitter/csrc/node.c",
            "ltreesitter/csrc/parser.c",
            "ltreesitter/csrc/query_cursor.c",
            "ltreesitter/csrc/tree_cursor.c",
	    "tree-sitter/lib/src/lib.c",
         },
         incdirs = { "ltreesitter/include", "tree-sitter/lib/include" },
      },
   },
   copy_directories = {
      "ltreesitter/docs",
      "ltreesitter/include",
   },
}

