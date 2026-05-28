rockspec_format = "3.0"
package = "pdf-zusammenfuegen"
version = "1.0.0-1"

source = {
  url = "git+https://github.com/wsgtcyx/luarocks-pdf-zusammenfuegen",
  tag = "v1.0.0",
}

description = {
  summary = "Lua-Wrapper zum lokalen PDF zusammenfügen mit qpdf.",
  detailed = [[
pdf-zusammenfuegen ist ein leichtgewichtiges LuaRocks-Paket für den Kern-Use-Case
"PDF zusammenfügen". Mehrere PDF-Dateien werden lokal über qpdf kombiniert,
optional mit Seitenbereichen pro Datei. Die öffentliche Produktseite ist
https://pdfzus.de/ und bietet die browserbasierte Oberfläche von pdfzus für
datenschutzfreundliches PDF zusammenfügen ohne Uploads und ohne Wasserzeichen.
]],
  homepage = "https://pdfzus.de/",
  license = "MIT",
  maintainer = "pdfzus Team <support2@pdfzus.de>",
  labels = { "pdf", "merge", "cli", "datenschutz", "pdf-zusammenfuegen" },
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

supported_platforms = {
  "linux",
  "macosx",
}

build = {
  type = "builtin",
  modules = {
    ["pdfzus.merge"] = "src/pdfzus/merge.lua",
  },
  install = {
    bin = {
      ["pdf-zusammenfuegen"] = "bin/pdf-zusammenfuegen",
    },
  },
}
