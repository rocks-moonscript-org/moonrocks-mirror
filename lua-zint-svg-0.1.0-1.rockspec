rockspec_format = "3.0"
package = "lua-zint-svg"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/500Foods/lua-zint-svg.git",
}
description = {
  summary = "Pure Lua barcodes: Code 39, Code 128, GS1-128, UPC-A, and QR",
  detailed = [[
Draw barcodes from Lua. No C library, no image library, and no
network at runtime. You get an SVG document, or a PDF Form XObject
content stream a report writer can place on a page.

    local zint = require "zint"

    local svg = zint.barcode({
      barcode = "qrcode",
      data = "https://example.invalid/report",
    })

    local form = zint.barcode({
      barcode = 34, -- UPC-A
      data = "12345678901",
      filetype = "PDF",
    })

form.kind is "form-xobject". form.bbox, form.content, and
form.resources are ready for the writer. The writer supplies the
object number, the length, the Form dictionary, and the Do.

This release draws these, by name or by id:

    Code 39                        8
    GS1-128                       16
    Code 128                      20
    UPC-A                         34
    UPC-A, check digit supplied   35
    QR Code                       58

lua-zint is the same library from the shell. Pass option values as
strings.

Not in this release: EAN-8, EAN-13, UPC-E, Code 93, ITF-14, Data
Matrix, Aztec, PDF417, the postal symbols, and the other formats
listed in the README.

An unknown Application Identifier is Error 260 and a bad length is
Error 259, and neither writes a file. A bad check digit or a bad
date is Warning 261, and the symbol is still drawn. QR text that
fits Latin-1 stays Latin-1. Shift JIS warns 760. Input that fits
neither is drawn again under an automatic ECI and warns 222.

An unknown filetype is Error 142. UPC-A digits in the PDF stream
are Helvetica, named and not embedded. The bars match the SVG.
The digit widths are not OCR-B. SVG text can use the bundled
Arimo or OCR-B fonts. See NOTICE.

Needs Lua 5.5 or newer. The rock builds no C.

Source, samples, and issues:
https://github.com/500Foods/lua-zint-svg
https://github.com/500foods/lua-zint-svg/issues
]],
  homepage = "https://github.com/500Foods/lua-zint-svg",
  issues_url = "https://github.com/500foods/lua-zint-svg/issues",
  license = "MIT",
  maintainer = "Andrew Simard <andrew@500foods.com>",
  labels = { "barcode", "svg", "pdf" },
}
dependencies = {
  "lua >= 5.5",
}
build = {
  type = "builtin",
  modules = {
    ["zint"] = "src/zint/init.lua",
    ["zint.code"] = "src/zint/code.lua",
    ["zint.code128"] = "src/zint/code128.lua",
    ["zint.common"] = "src/zint/common.lua",
    ["zint.eci"] = "src/zint/eci.lua",
    ["zint.eci_sb"] = "src/zint/eci_sb.lua",
    ["zint.fonts"] = "src/zint/fonts.lua",
    ["zint.gs1"] = "src/zint/gs1.lua",
    ["zint.gs1_lint"] = "src/zint/gs1_lint.lua",
    ["zint.options"] = "src/zint/options.lua",
    ["zint.output"] = "src/zint/output.lua",
    ["zint.pdf"] = "src/zint/pdf.lua",
    ["zint.qr"] = "src/zint/qr.lua",
    ["zint.qrtables"] = "src/zint/qrtables.lua",
    ["zint.reedsol"] = "src/zint/reedsol.lua",
    ["zint.reedsol_logs"] = "src/zint/reedsol_logs.lua",
    ["zint.sjis"] = "src/zint/sjis.lua",
    ["zint.svg"] = "src/zint/svg.lua",
    ["zint.upcean"] = "src/zint/upcean.lua",
    ["zint.vector"] = "src/zint/vector.lua",
  },
  install = {
    bin = {
      ["lua-zint"] = "bin/lua-zint",
    },
  },
}
