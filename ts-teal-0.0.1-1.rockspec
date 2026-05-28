rockspec_format = "3.0"

package = "ts-teal"
version = "0.0.1-1"

source = {
   url = "git+https://github.com/FourierTransformer/ts-teal",
   tag = "0.0.1"
}

description = {
   summary = "tree-sitter grammar to Teal",
   detailed = "An ebnf generated tree-sitter grammar for the Teal programming language",
   homepage = "https://github.com/FourierTransformer/tree-sitter-cli",
   issues_url = "https://github.com/FourierTransformer/tree-sitter-cli/issues",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
      ["ts-teal"] = {"src/parser.c", "src/scanner.c"}
   }   
}
