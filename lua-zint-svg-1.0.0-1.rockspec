rockspec_format = "3.0"
package = "lua-zint-svg"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/500Foods/lua-zint-svg.git",
  tag = "v1.0.0",
}
description = {
  summary = "Pure Lua barcodes: Code 39, Code 128, GS1-128, UPC, EAN, ISBN, ITF, SSCC, QR, and Data Matrix",
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
    Code 128 (suppress C)         60
    Flattermarken                 28
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
    GS1 DataBar Omnidirectional          29
    GS1 DataBar Stacked Omnidirectional  80
    GS1 DataBar Expanded          31
    GS1 DataBar Expanded Stacked  81
    Data Matrix                   71
    PDF417                        55
    Compact PDF417                56
    MaxiCode                      57
    USPS Intelligent Mail         85
    Aztec                         92
    EAN-2 add-on                  11
    EAN-5 add-on                  12
    ISBN                          69

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

GS1 DataBar Omnidirectional takes up to 14 digits. Thirteen are
padded and the check digit is appended. Fourteen must include the
right check digit. A (01), [01], or leading 01 of the right length
is stripped. Stacked Omnidirectional is the same symbol in two
rows and has no human-readable line. Neither variant has a quiet
zone. --gs1 is refused. The short names are dbaromn and dbaromnstk.

GS1 DataBar Expanded takes a GS1 element string. Expanded Stacked
is the same symbol broken into rows. cols sets the columns per row
(1 to 11, default 2). rows sets the maximum rows (2 to 11) when
cols is omitted. Stacked symbols have no human-readable line.
Neither variant has a quiet zone. The short names are dbarexp and
dbarexpstk.

Data Matrix takes bytes. The short name is datamatrix. It has no
human-readable line. vers picks a size from 1 to 48. square keeps
the symbol square. dmre allows the rectangular DMRE sizes. fast
uses the look-ahead encodation. A 144x144 symbol uses the de-facto
ECC arrangement unless dmiso144 is set. The quiet zone is one
module on each side, and only with quietzones. gs1 encodes an
element string. gssep stores the GS separator as data. init writes
a reader-initialisation symbol and is refused in GS1 mode. dotty
draws the modules as dots.

EAN-2 and EAN-5 are the magazine add-ons, drawn on their own. The
short names are ean2 and ean5. A short digit string is padded with
leading zeroes. The same add-on can hang off an EAN-13, a UPC-A, or
a UPC-E. ISBN is drawn as EAN-13. The short names are isbn and
isbnx. An ISBN-13 must begin with 978 or 979. An ISBN-10 or a
9-digit SBN becomes 978 plus the body. The human-readable line is
the EAN-13 digits.

Code 128 suppress C is Code 128 that never uses code set C, so a
run of digits stays in set A or B. The short names are code128ab
and code128b. Its quiet zone is the same 10 modules as Code 128,
and only with quietzones. Flattermarken draws one mark per digit
and has no human-readable line. The short name is flat. It takes
up to 128 digits and has no quiet zone.

PDF417 takes bytes and has no human-readable line. The short name
is pdf417. Compact PDF417 drops the right row indicator and the
stop pattern. Its short names are pdf417comp and pdf417trunc.
secure sets the error correction level from 0 to 8. The default
lets the symbol choose. cols sets the data columns from 1 to 30.
rows sets the rows from 3 to 90. The quiet zone is two modules on
each side, and only with quietzones.

MaxiCode draws a hexagonal grid and a bullseye. The short name is
maxicode. It has no human-readable line. mode selects modes 2 to 6.
With no mode and no primary message the symbol is mode 4. Modes 2
and 3 read primary. scmvv sets the Structured Carrier Message
version. The quiet zone is one module on each side, and only with
quietzones. dotty is refused.

Aztec takes bytes. The short names are aztec and azteccode. It has
no human-readable line and no quiet zone. vers picks a size from 1
to 36. Sizes 1 to 4 are compact. secure sets the error correction
level from 1 to 4. The default is 2. gs1 encodes an element string.
init writes a reader-initialisation symbol and is refused in GS1
mode. dotty draws the modules as dots.

USPS Intelligent Mail takes a 20-digit tracking code, and an
optional ZIP of 5, 9, or 11 digits after a hyphen. The short name
is uspsimail. It has no human-readable line. The quiet zone is
added with quietzones.

UPC and EAN human-readable digits are placed at OCR-B advances.
The report writer embeds OCR-B and uses those positions. The PDF
form names Helvetica as a placeholder font. SVG draws those digits
in the bundled OCR-B face and every other symbol in Arimo.

lua-zint is the same library from the shell. Pass option values as
strings.

Not in this release: Code 93, MicroPDF417, the other postal symbols,
and the other formats listed in the README.

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
    ["zint.aztec"] = "src/zint/aztec.lua",
    ["zint.aztec_tabs"] = "src/zint/aztec_tabs.lua",
    ["zint.c25inter"] = "src/zint/c25inter.lua",
    ["zint.code"] = "src/zint/code.lua",
    ["zint.code128"] = "src/zint/code128.lua",
    ["zint.common"] = "src/zint/common.lua",
    ["zint.dbar"] = "src/zint/dbar.lua",
    ["zint.dmatrix"] = "src/zint/dmatrix.lua",
    ["zint.eci"] = "src/zint/eci.lua",
    ["zint.flat"] = "src/zint/flat.lua",
    ["zint.eci_sb"] = "src/zint/eci_sb.lua",
    ["zint.fonts"] = "src/zint/fonts.lua",
    ["zint.fonts_ttf"] = "src/zint/fonts_ttf.lua",
    ["zint.gs1"] = "src/zint/gs1.lua",
    ["zint.gs1_lint"] = "src/zint/gs1_lint.lua",
    ["zint.imail"] = "src/zint/imail.lua",
    ["zint.imail_tabs"] = "src/zint/imail_tabs.lua",
    ["zint.large"] = "src/zint/large.lua",
    ["zint.maxicode"] = "src/zint/maxicode.lua",
    ["zint.maxicode_tabs"] = "src/zint/maxicode_tabs.lua",
    ["zint.options"] = "src/zint/options.lua",
    ["zint.output"] = "src/zint/output.lua",
    ["zint.pdf"] = "src/zint/pdf.lua",
    ["zint.pdf417"] = "src/zint/pdf417.lua",
    ["zint.pdf417_tabs"] = "src/zint/pdf417_tabs.lua",
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
