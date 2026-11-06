rockspec_format = "3.0"
package = "lua-zint-svg"
version = "0.2.0-1"
source = {
  url = "git+https://github.com/500Foods/lua-zint-svg.git",
  tag = "v0.2.0",
}
description = {
  summary = "Pure Lua barcodes: Code 39, Code 128, GS1-128, UPC, EAN, ITF, SSCC, and QR",
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
    EAN-8                         10
    EAN-13                        15
    UPC-E                         37
    UPC-E, check digit supplied   38
    Interleaved 2 of 5             3
    ITF-14                        89
    NVE-18 (SSCC)                 75
    QR Code                       58

EAN-13 takes 12 digits and appends the check digit, or 13 digits
and checks the one you supplied. EAN-8 does the same with 7 or 8.
UPC-E takes 6 digits, or 7 with a number system of 0 or 1. Id 38
requires the check digit. An EAN-8 add-on is drawn and warned as
non-standard.

Interleaved 2 of 5 takes digits. An odd count grows a leading
zero. vers 1 appends a GS1 check digit and shows it. vers 2
appends it and leaves it off the human-readable line. ITF-14
takes up to 14 digits, pads to 13, and appends or checks the GS1
check digit. It draws a bearer box of 5 modules unless a box or
bind is already set. ITF-14 always has a 10-module quiet zone.
Interleaved 2 of 5 adds that zone only with quietzones.

NVE-18 is the 18-digit SSCC, drawn as GS1-128. It takes up to 18
digits, pads to 17, and appends or checks the GS1 check digit. The
command-line name is nve18. Its quiet zone is added with quietzones.

UPC and EAN human-readable digits are placed at OCR-B advances.
The report writer embeds OCR-B and uses those positions. The PDF
form names Helvetica as a placeholder font. SVG draws those digits
in the bundled OCR-B face and every other symbol in Arimo.

lua-zint is the same library from the shell. Pass option values as
strings.

Not in this release: Code 93, Data Matrix,
Aztec, PDF417, the postal symbols, and the other formats listed
in the README.

An unknown Application Identifier is Error 260 and a bad length is
Error 259, and neither writes a file. A bad check digit or a bad
date is Warning 261, and the symbol is still drawn. QR text that
fits Latin-1 stays Latin-1. Shift JIS warns 760. Input that fits
neither is drawn again under an automatic ECI and warns 222.

An unknown filetype is Error 142. The PDF form names Helvetica
and leaves the face to the report writer. See NOTICE.

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
    ["zint.c25inter"] = "src/zint/c25inter.lua",
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
