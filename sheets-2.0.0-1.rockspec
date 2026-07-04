package = "sheets"
version = "2.0.0-1"

source = {
   url = "git+https://github.com/nnengine/sheets.git",
   -- branch = "main",
   tag = "v2.0.0",
}

description = {
   summary = "Fast, memory-efficient CSV and tabular data toolkit for Lua",

   detailed = [[
      sheets is a fast, memory-efficient CSV and tabular data toolkit for Lua,
      built on top of the battle-tested libcsv C library.

      It combines native C performance with a Python-inspired API and
      lightweight tabular data transformation utilities.

      Features:
      - RFC 4180 compliant CSV parsing and writing
      - High-performance C backend using libcsv
      - Python csv module-inspired API
      - Reader, Writer, DictReader, DictWriter
      - Built-in dialects (excel, excel-tab, unix)
      - Custom dialect support
      - CSV format auto-detection with Sniffer
      - Data transformation utilities (filter, map, sort, group_by, etc)
      - Pure Lua API layer for flexibility
      - No external dependencies
      - Support for Lua 5.2 - 5.4

      sheets is designed for:
      - Data preprocessing
      - ETL pipelines
      - Analytics workloads
      - CSV-heavy backend systems
      - Machine learning workflows

      Documentation: https://nnengine.github.io/sheets/
   ]],

   homepage = "https://github.com/NNEngine",
   license = "MIT",
   maintainer = "Shivam Sharma"
}

dependencies = {
   "lua >= 5.2",
}

build = {
  type = "builtin",

  modules = {
    ["sheets"] = "sheets/init.lua",
    ["sheets.reader"] = "sheets/reader.lua",
    ["sheets.writer"] = "sheets/writer.lua",
    ["sheets.dialect"] = "sheets/dialect.lua",
    ["sheets.dictreader"] = "sheets/dictreader.lua",
    ["sheets.dictwriter"] = "sheets/dictwriter.lua",
    ["sheets.sniffer"] = "sheets/sniffer.lua",

    ["sheets.core"] = {
      sources = {
        "sheets/core.c",
        "lib/libcsv/libcsv.c"
      },
      incdirs = {"lib/libcsv"}
    }
  }
}
