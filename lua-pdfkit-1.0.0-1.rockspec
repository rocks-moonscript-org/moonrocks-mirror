rockspec_format = "3.0"
package = "lua-pdfkit"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/500Foods/lua-pdfkit.git",
  tag = "v1.0.0",
}
description = {
  summary = "Pure Lua PDF writer, a port of PDFKit 0.20.2",
  detailed = [[
Pure Lua PDF writer. No Node, no C module, and no network at runtime.
require "lua-pdfkit" returns the document constructor.

This is an independent port of PDFKit 0.20.2 by Devon Govett
(https://pdfkit.org/, https://github.com/foliojs/pdfkit). The rock
version does not track PDFKit's version. This project is not
affiliated with foliojs.

    local PDFDocument = require "lua-pdfkit"

    local doc = PDFDocument.new({ size = "LETTER" })
    doc:fontSize(16)
    doc:text("hello", 72, 72)

    local out = assert(io.open("out.pdf", "wb"))
    doc:pipe(out)
    doc:finish()
    out:close()

pipe takes an open Lua file handle and is optional.
doc:output() returns the PDF as a string after finish().
doc:finish() is PDFKit's doc.end(), and ref:finish() is ref.end(),
because Lua reserves end. Other names keep PDFKit's spelling.
PDFKit's guide: https://pdfkit.org/docs/getting_started.html

The twenty-two compared families match PDFKit 0.20.2 byte for byte
after blanking PDF dates, the trailer /ID, and xmp:CreateDate. That
includes forms, outlines, Hebrew, Arabic, embedded CFF (.otf), and
WOFF1. Standard fonts are WinAnsi; Unicode text needs an embedded
font. Passwords are refused. WOFF2 is not supported. This is a
writer: it does not read, merge, or stamp an existing PDF.

If a PDFKit feature you need did not make 1.0.0, please ask for it:
https://github.com/500Foods/lua-pdfkit/issues

Needs Lua 5.5 or newer. The rock builds no C.

Source and issues:
https://github.com/500Foods/lua-pdfkit
https://github.com/500Foods/lua-pdfkit/issues
]],
  homepage = "https://github.com/500Foods/lua-pdfkit",
  issues_url = "https://github.com/500Foods/lua-pdfkit/issues",
  license = "MIT",
  maintainer = "Andrew Simard <andrew@500foods.com>",
  labels = { "pdf" },
}
dependencies = {
  "lua >= 5.5",
}
build = {
  type = "builtin",
  modules = {
    ["lua-pdfkit.base64"] = "src/lua-pdfkit/base64.lua",
    ["lua-pdfkit.collate"] = "src/lua-pdfkit/collate.lua",
    ["lua-pdfkit.document"] = "src/lua-pdfkit/document.lua",
    ["lua-pdfkit.flate"] = "src/lua-pdfkit/flate.lua",
    ["lua-pdfkit.font.afm"] = "src/lua-pdfkit/font/afm.lua",
    ["lua-pdfkit.font.embedded"] = "src/lua-pdfkit/font/embedded.lua",
    ["lua-pdfkit.font.generated.Courier"] = "src/lua-pdfkit/font/generated/Courier.lua",
    ["lua-pdfkit.font.generated.CourierBold"] = "src/lua-pdfkit/font/generated/CourierBold.lua",
    ["lua-pdfkit.font.generated.CourierBoldOblique"] = "src/lua-pdfkit/font/generated/CourierBoldOblique.lua",
    ["lua-pdfkit.font.generated.CourierOblique"] = "src/lua-pdfkit/font/generated/CourierOblique.lua",
    ["lua-pdfkit.font.generated.Helvetica"] = "src/lua-pdfkit/font/generated/Helvetica.lua",
    ["lua-pdfkit.font.generated.HelveticaBold"] = "src/lua-pdfkit/font/generated/HelveticaBold.lua",
    ["lua-pdfkit.font.generated.HelveticaBoldOblique"] = "src/lua-pdfkit/font/generated/HelveticaBoldOblique.lua",
    ["lua-pdfkit.font.generated.HelveticaOblique"] = "src/lua-pdfkit/font/generated/HelveticaOblique.lua",
    ["lua-pdfkit.font.generated.Symbol"] = "src/lua-pdfkit/font/generated/Symbol.lua",
    ["lua-pdfkit.font.generated.TimesBold"] = "src/lua-pdfkit/font/generated/TimesBold.lua",
    ["lua-pdfkit.font.generated.TimesBoldItalic"] = "src/lua-pdfkit/font/generated/TimesBoldItalic.lua",
    ["lua-pdfkit.font.generated.TimesItalic"] = "src/lua-pdfkit/font/generated/TimesItalic.lua",
    ["lua-pdfkit.font.generated.TimesRoman"] = "src/lua-pdfkit/font/generated/TimesRoman.lua",
    ["lua-pdfkit.font.generated.ZapfDingbats"] = "src/lua-pdfkit/font/generated/ZapfDingbats.lua",
    ["lua-pdfkit.font.generated.standardGlyphNames"] = "src/lua-pdfkit/font/generated/standardGlyphNames.lua",
    ["lua-pdfkit.font.standard"] = "src/lua-pdfkit/font/standard.lua",
    ["lua-pdfkit.font"] = "src/lua-pdfkit/font.lua",
    ["lua-pdfkit.font_factory"] = "src/lua-pdfkit/font_factory.lua",
    ["lua-pdfkit.fontkit.CmapProcessor"] = "src/lua-pdfkit/fontkit/CmapProcessor.lua",
    ["lua-pdfkit.fontkit.TTFFont"] = "src/lua-pdfkit/fontkit/TTFFont.lua",
    ["lua-pdfkit.fontkit.TrueTypeCollection"] = "src/lua-pdfkit/fontkit/TrueTypeCollection.lua",
    ["lua-pdfkit.fontkit.WOFFFont"] = "src/lua-pdfkit/fontkit/WOFFFont.lua",
    ["lua-pdfkit.fontkit.base"] = "src/lua-pdfkit/fontkit/base.lua",
    ["lua-pdfkit.fontkit.cff.font"] = "src/lua-pdfkit/fontkit/cff/font.lua",
    ["lua-pdfkit.fontkit.cff.operand"] = "src/lua-pdfkit/fontkit/cff/operand.lua",
    ["lua-pdfkit.fontkit.cff.standard_strings"] = "src/lua-pdfkit/fontkit/cff/standard_strings.lua",
    ["lua-pdfkit.fontkit.encodings"] = "src/lua-pdfkit/fontkit/encodings.lua",
    ["lua-pdfkit.fontkit.glyph.BBox"] = "src/lua-pdfkit/fontkit/glyph/BBox.lua",
    ["lua-pdfkit.fontkit.glyph.CFFGlyph"] = "src/lua-pdfkit/fontkit/glyph/CFFGlyph.lua",
    ["lua-pdfkit.fontkit.glyph.Glyph"] = "src/lua-pdfkit/fontkit/glyph/Glyph.lua",
    ["lua-pdfkit.fontkit.glyph.Path"] = "src/lua-pdfkit/fontkit/glyph/Path.lua",
    ["lua-pdfkit.fontkit.glyph.StandardNames"] = "src/lua-pdfkit/fontkit/glyph/StandardNames.lua",
    ["lua-pdfkit.fontkit.glyph.TTFGlyph"] = "src/lua-pdfkit/fontkit/glyph/TTFGlyph.lua",
    ["lua-pdfkit.fontkit.glyph.TTFGlyphEncoder"] = "src/lua-pdfkit/fontkit/glyph/TTFGlyphEncoder.lua",
    ["lua-pdfkit.fontkit"] = "src/lua-pdfkit/fontkit/init.lua",
    ["lua-pdfkit.fontkit.layout.GlyphPosition"] = "src/lua-pdfkit/fontkit/layout/GlyphPosition.lua",
    ["lua-pdfkit.fontkit.layout.GlyphRun"] = "src/lua-pdfkit/fontkit/layout/GlyphRun.lua",
    ["lua-pdfkit.fontkit.layout.KernProcessor"] = "src/lua-pdfkit/fontkit/layout/KernProcessor.lua",
    ["lua-pdfkit.fontkit.layout.LayoutEngine"] = "src/lua-pdfkit/fontkit/layout/LayoutEngine.lua",
    ["lua-pdfkit.fontkit.layout.Script"] = "src/lua-pdfkit/fontkit/layout/Script.lua",
    ["lua-pdfkit.fontkit.layout.UnicodeLayoutEngine"] = "src/lua-pdfkit/fontkit/layout/UnicodeLayoutEngine.lua",
    ["lua-pdfkit.fontkit.opentype.GPOSProcessor"] = "src/lua-pdfkit/fontkit/opentype/GPOSProcessor.lua",
    ["lua-pdfkit.fontkit.opentype.GSUBProcessor"] = "src/lua-pdfkit/fontkit/opentype/GSUBProcessor.lua",
    ["lua-pdfkit.fontkit.opentype.GlyphInfo"] = "src/lua-pdfkit/fontkit/opentype/GlyphInfo.lua",
    ["lua-pdfkit.fontkit.opentype.GlyphIterator"] = "src/lua-pdfkit/fontkit/opentype/GlyphIterator.lua",
    ["lua-pdfkit.fontkit.opentype.OTLayoutEngine"] = "src/lua-pdfkit/fontkit/opentype/OTLayoutEngine.lua",
    ["lua-pdfkit.fontkit.opentype.OTProcessor"] = "src/lua-pdfkit/fontkit/opentype/OTProcessor.lua",
    ["lua-pdfkit.fontkit.opentype.ShapingPlan"] = "src/lua-pdfkit/fontkit/opentype/ShapingPlan.lua",
    ["lua-pdfkit.fontkit.opentype.shapers.ArabicShaper"] = "src/lua-pdfkit/fontkit/opentype/shapers/ArabicShaper.lua",
    ["lua-pdfkit.fontkit.opentype.shapers.DefaultShaper"] = "src/lua-pdfkit/fontkit/opentype/shapers/DefaultShaper.lua",
    ["lua-pdfkit.fontkit.opentype.shapers.arabic_data"] = "src/lua-pdfkit/fontkit/opentype/shapers/arabic_data.lua",
    ["lua-pdfkit.fontkit.opentype.shapers"] = "src/lua-pdfkit/fontkit/opentype/shapers/init.lua",
    ["lua-pdfkit.fontkit.reader"] = "src/lua-pdfkit/fontkit/reader.lua",
    ["lua-pdfkit.fontkit.subset.CFFSubset"] = "src/lua-pdfkit/fontkit/subset/CFFSubset.lua",
    ["lua-pdfkit.fontkit.subset.Subset"] = "src/lua-pdfkit/fontkit/subset/Subset.lua",
    ["lua-pdfkit.fontkit.subset.TTFSubset"] = "src/lua-pdfkit/fontkit/subset/TTFSubset.lua",
    ["lua-pdfkit.fontkit.tables.GDEF"] = "src/lua-pdfkit/fontkit/tables/GDEF.lua",
    ["lua-pdfkit.fontkit.tables.GPOS"] = "src/lua-pdfkit/fontkit/tables/GPOS.lua",
    ["lua-pdfkit.fontkit.tables.GSUB"] = "src/lua-pdfkit/fontkit/tables/GSUB.lua",
    ["lua-pdfkit.fontkit.tables.OS2"] = "src/lua-pdfkit/fontkit/tables/OS2.lua",
    ["lua-pdfkit.fontkit.tables.cmap"] = "src/lua-pdfkit/fontkit/tables/cmap.lua",
    ["lua-pdfkit.fontkit.tables.cvt"] = "src/lua-pdfkit/fontkit/tables/cvt.lua",
    ["lua-pdfkit.fontkit.tables.directory"] = "src/lua-pdfkit/fontkit/tables/directory.lua",
    ["lua-pdfkit.fontkit.tables.fpgm"] = "src/lua-pdfkit/fontkit/tables/fpgm.lua",
    ["lua-pdfkit.fontkit.tables.glyf"] = "src/lua-pdfkit/fontkit/tables/glyf.lua",
    ["lua-pdfkit.fontkit.tables.head"] = "src/lua-pdfkit/fontkit/tables/head.lua",
    ["lua-pdfkit.fontkit.tables.hhea"] = "src/lua-pdfkit/fontkit/tables/hhea.lua",
    ["lua-pdfkit.fontkit.tables.hmtx"] = "src/lua-pdfkit/fontkit/tables/hmtx.lua",
    ["lua-pdfkit.fontkit.tables"] = "src/lua-pdfkit/fontkit/tables/init.lua",
    ["lua-pdfkit.fontkit.tables.kern"] = "src/lua-pdfkit/fontkit/tables/kern.lua",
    ["lua-pdfkit.fontkit.tables.loca"] = "src/lua-pdfkit/fontkit/tables/loca.lua",
    ["lua-pdfkit.fontkit.tables.maxp"] = "src/lua-pdfkit/fontkit/tables/maxp.lua",
    ["lua-pdfkit.fontkit.tables.name"] = "src/lua-pdfkit/fontkit/tables/name.lua",
    ["lua-pdfkit.fontkit.tables.opentype"] = "src/lua-pdfkit/fontkit/tables/opentype.lua",
    ["lua-pdfkit.fontkit.tables.post"] = "src/lua-pdfkit/fontkit/tables/post.lua",
    ["lua-pdfkit.fontkit.tables.prep"] = "src/lua-pdfkit/fontkit/tables/prep.lua",
    ["lua-pdfkit.fontkit.unicode"] = "src/lua-pdfkit/fontkit/unicode.lua",
    ["lua-pdfkit.fontkit.utils"] = "src/lua-pdfkit/fontkit/utils.lua",
    ["lua-pdfkit.fontkit.writer"] = "src/lua-pdfkit/fontkit/writer.lua",
    ["lua-pdfkit.gradient"] = "src/lua-pdfkit/gradient.lua",
    ["lua-pdfkit.image.jpeg"] = "src/lua-pdfkit/image/jpeg.lua",
    ["lua-pdfkit.image.png"] = "src/lua-pdfkit/image/png.lua",
    ["lua-pdfkit.image"] = "src/lua-pdfkit/image.lua",
    ["lua-pdfkit"] = "src/lua-pdfkit/init.lua",
    ["lua-pdfkit.jsmath"] = "src/lua-pdfkit/jsmath.lua",
    ["lua-pdfkit.jsstring"] = "src/lua-pdfkit/jsstring.lua",
    ["lua-pdfkit.line_breaker"] = "src/lua-pdfkit/line_breaker.lua",
    ["lua-pdfkit.line_wrapper"] = "src/lua-pdfkit/line_wrapper.lua",
    ["lua-pdfkit.linebreak.classes"] = "src/lua-pdfkit/linebreak/classes.lua",
    ["lua-pdfkit.linebreak.data"] = "src/lua-pdfkit/linebreak/data.lua",
    ["lua-pdfkit.linebreak.pairs"] = "src/lua-pdfkit/linebreak/pairs.lua",
    ["lua-pdfkit.md5"] = "src/lua-pdfkit/md5.lua",
    ["lua-pdfkit.metadata"] = "src/lua-pdfkit/metadata.lua",
    ["lua-pdfkit.mixins.acroform"] = "src/lua-pdfkit/mixins/acroform.lua",
    ["lua-pdfkit.mixins.annotations"] = "src/lua-pdfkit/mixins/annotations.lua",
    ["lua-pdfkit.mixins.attachments"] = "src/lua-pdfkit/mixins/attachments.lua",
    ["lua-pdfkit.mixins.color"] = "src/lua-pdfkit/mixins/color.lua",
    ["lua-pdfkit.mixins.fonts"] = "src/lua-pdfkit/mixins/fonts.lua",
    ["lua-pdfkit.mixins.images"] = "src/lua-pdfkit/mixins/images.lua",
    ["lua-pdfkit.mixins.markings"] = "src/lua-pdfkit/mixins/markings.lua",
    ["lua-pdfkit.mixins.metadata"] = "src/lua-pdfkit/mixins/metadata.lua",
    ["lua-pdfkit.mixins.outline"] = "src/lua-pdfkit/mixins/outline.lua",
    ["lua-pdfkit.mixins.pdfa"] = "src/lua-pdfkit/mixins/pdfa.lua",
    ["lua-pdfkit.mixins.pdfua"] = "src/lua-pdfkit/mixins/pdfua.lua",
    ["lua-pdfkit.mixins.srgb_profile"] = "src/lua-pdfkit/mixins/srgb_profile.lua",
    ["lua-pdfkit.mixins.subsets"] = "src/lua-pdfkit/mixins/subsets.lua",
    ["lua-pdfkit.mixins.table"] = "src/lua-pdfkit/mixins/table.lua",
    ["lua-pdfkit.mixins.text"] = "src/lua-pdfkit/mixins/text.lua",
    ["lua-pdfkit.mixins.vector"] = "src/lua-pdfkit/mixins/vector.lua",
    ["lua-pdfkit.name_tree"] = "src/lua-pdfkit/name_tree.lua",
    ["lua-pdfkit.number_tree"] = "src/lua-pdfkit/number_tree.lua",
    ["lua-pdfkit.object"] = "src/lua-pdfkit/object.lua",
    ["lua-pdfkit.outline"] = "src/lua-pdfkit/outline.lua",
    ["lua-pdfkit.page"] = "src/lua-pdfkit/page.lua",
    ["lua-pdfkit.path"] = "src/lua-pdfkit/path.lua",
    ["lua-pdfkit.pattern"] = "src/lua-pdfkit/pattern.lua",
    ["lua-pdfkit.png_reader"] = "src/lua-pdfkit/png_reader.lua",
    ["lua-pdfkit.reference"] = "src/lua-pdfkit/reference.lua",
    ["lua-pdfkit.spotcolor"] = "src/lua-pdfkit/spotcolor.lua",
    ["lua-pdfkit.structure_annotation"] = "src/lua-pdfkit/structure_annotation.lua",
    ["lua-pdfkit.structure_content"] = "src/lua-pdfkit/structure_content.lua",
    ["lua-pdfkit.structure_element"] = "src/lua-pdfkit/structure_element.lua",
    ["lua-pdfkit.table.accessibility"] = "src/lua-pdfkit/table/accessibility.lua",
    ["lua-pdfkit.table.index"] = "src/lua-pdfkit/table/index.lua",
    ["lua-pdfkit.table.normalize"] = "src/lua-pdfkit/table/normalize.lua",
    ["lua-pdfkit.table.render"] = "src/lua-pdfkit/table/render.lua",
    ["lua-pdfkit.table.size"] = "src/lua-pdfkit/table/size.lua",
    ["lua-pdfkit.table.style"] = "src/lua-pdfkit/table/style.lua",
    ["lua-pdfkit.table.utils"] = "src/lua-pdfkit/table/utils.lua",
    ["lua-pdfkit.tree"] = "src/lua-pdfkit/tree.lua",
    ["lua-pdfkit.utils"] = "src/lua-pdfkit/utils.lua",
    ["lua-pdfkit.zlib.deflate"] = "src/lua-pdfkit/zlib/deflate.lua",
    ["lua-pdfkit.zlib.trees"] = "src/lua-pdfkit/zlib/trees.lua",
  },
}
