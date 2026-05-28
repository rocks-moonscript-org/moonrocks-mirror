rockspec_format = "1.0"
package = "cerulean"
version = "1.0.1-1"

source = {
   url = "git+https://github.com/efredriksson/cerulean",
   tag = "v1.0.1",
}

description = {
   summary = "A formatter for the Teal programming language",
   detailed = [[
      Cerulean formats Teal source files with configurable indentation,
      line width, and require-statement sorting. It can be run as a CLI
      tool or integrated into editor workflows.
   ]],
   homepage = "https://github.com/efredriksson/cerulean",
   license = "MIT",
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem",
   "tl",
}

build = {
   type = "builtin",
   modules = {
      ["cerulean"] = "dist/cerulean/init.lua",
      ["cerulean.ast_traversal"] = "dist/cerulean/ast_traversal.lua",
      ["cerulean.block_doc"] = "dist/cerulean/block_doc.lua",
      ["cerulean.doc"] = "dist/cerulean/doc.lua",
      ["cerulean.expr_doc"] = "dist/cerulean/expr_doc.lua",
      ["cerulean.file_discovery"] = "dist/cerulean/file_discovery.lua",
      ["cerulean.fmt_logger"] = "dist/cerulean/fmt_logger.lua",
      ["cerulean.function_doc"] = "dist/cerulean/function_doc.lua",
      ["cerulean.inline_stmt_doc"] = "dist/cerulean/inline_stmt_doc.lua",
      ["cerulean.options"] = "dist/cerulean/options.lua",
      ["cerulean.parser"] = "dist/cerulean/parser.lua",
      ["cerulean.render_builders"] = "dist/cerulean/render_builders.lua",
      ["cerulean.render_context"] = "dist/cerulean/render_context.lua",
      ["cerulean.require_sort"] = "dist/cerulean/require_sort.lua",
      ["cerulean.rewriter"] = "dist/cerulean/rewriter.lua",
      ["cerulean.signature_doc"] = "dist/cerulean/signature_doc.lua",
      ["cerulean.source"] = "dist/cerulean/source.lua",
      ["cerulean.stmt_doc"] = "dist/cerulean/stmt_doc.lua",
      ["cerulean.table_doc"] = "dist/cerulean/table_doc.lua",
      ["cerulean.type_doc"] = "dist/cerulean/type_doc.lua",
   },
   install = {
      bin = { ceru = "bin/ceru" },
   },
}
