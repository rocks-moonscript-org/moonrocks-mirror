rockspec_format = "3.0"

package = "ts-teal"
version = "0.2.0-1"

source = {
   url = "git+https://github.com/FourierTransformer/ts-teal",
   tag = "0.2.0"
}

description = {
   summary = "tree-sitter grammar to Teal",
   detailed = "An ebnf generated tree-sitter grammar for the Teal programming language",
   homepage = "https://github.com/FourierTransformer/ts-teal",
   issues_url = "https://github.com/FourierTransformer/ts-teal/issues",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
      ["ts-teal"] = {"src/parser.c", "src/scanner.c", "src/lua_stub.c", incdirs = {"src"}}
   }   
}
