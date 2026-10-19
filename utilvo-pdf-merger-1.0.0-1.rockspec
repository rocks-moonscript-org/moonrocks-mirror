package = "utilvo-pdf-merger"
version = "1.0.0-1"

source = {
   url = "git+https://github.com/utilvo/utilvo-pdf-merger.git",
   tag = "v1.0.0"
}

description = {
   summary = "Lightweight Lua library for inspecting PDF binary headers, counting pages, and merging PDF byte streams.",
   detailed = [[
      Zero-dependency Lua module for inspecting PDF specification headers,
      counting /Type /Page dictionary objects, and merging PDF streams.
   ]],
   homepage = "https://utilvo.com/pdf-tools/merge-pdf",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["utilvo_pdf_merger"] = "lua/utilvo_pdf_merger.lua"
   }
}
