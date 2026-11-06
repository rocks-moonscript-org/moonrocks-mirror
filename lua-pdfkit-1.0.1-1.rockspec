rockspec_format = "3.0"
package = "lua-pdfkit"
version = "1.0.1-1"
source = {
  url = "git+https://github.com/500Foods/lua-pdfkit.git",
  tag = "v1.0.1",
}
description = {
  summary = "Pure Lua PDF writer, a port of PDFKit 0.20.2",
  detailed = [[
Pure Lua PDF writer. No Node, no C module, and no network at runtime.
require "pdfkit" returns the document constructor.

This is an independent port of PDFKit 0.20.2 by Devon Govett
(https://pdfkit.org/, https://github.com/foliojs/pdfkit). The rock
version does not track PDFKit's version. This project is not
affiliated with foliojs.

    local PDFDocument = require "pdfkit"

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
    ["pdfkit.base64"] = "src/pdfkit/base64.lua",
    ["pdfkit.collate"] = "src/pdfkit/collate.lua",
    ["pdfkit.document"] = "src/pdfkit/document.lua",
    ["pdfkit.flate"] = "src/pdfkit/flate.lua",
    ["pdfkit.font.afm"] = "src/pdfkit/font/afm.lua",
    ["pdfkit.font.embedded"] = "src/pdfkit/font/embedded.lua",
    ["pdfkit.font.generated.Courier"] = "src/pdfkit/font/generated/Courier.lua",
    ["pdfkit.font.generated.CourierBold"] = "src/pdfkit/font/generated/CourierBold.lua",
    ["pdfkit.font.generated.CourierBoldOblique"] = "src/pdfkit/font/generated/CourierBoldOblique.lua",
    ["pdfkit.font.generated.CourierOblique"] = "src/pdfkit/font/generated/CourierOblique.lua",
    ["pdfkit.font.generated.Helvetica"] = "src/pdfkit/font/generated/Helvetica.lua",
    ["pdfkit.font.generated.HelveticaBold"] = "src/pdfkit/font/generated/HelveticaBold.lua",
    ["pdfkit.font.generated.HelveticaBoldOblique"] = "src/pdfkit/font/generated/HelveticaBoldOblique.lua",
    ["pdfkit.font.generated.HelveticaOblique"] = "src/pdfkit/font/generated/HelveticaOblique.lua",
    ["pdfkit.font.generated.Symbol"] = "src/pdfkit/font/generated/Symbol.lua",
    ["pdfkit.font.generated.TimesBold"] = "src/pdfkit/font/generated/TimesBold.lua",
    ["pdfkit.font.generated.TimesBoldItalic"] = "src/pdfkit/font/generated/TimesBoldItalic.lua",
    ["pdfkit.font.generated.TimesItalic"] = "src/pdfkit/font/generated/TimesItalic.lua",
    ["pdfkit.font.generated.TimesRoman"] = "src/pdfkit/font/generated/TimesRoman.lua",
    ["pdfkit.font.generated.ZapfDingbats"] = "src/pdfkit/font/generated/ZapfDingbats.lua",
    ["pdfkit.font.generated.standardGlyphNames"] = "src/pdfkit/font/generated/standardGlyphNames.lua",
    ["pdfkit.font.standard"] = "src/pdfkit/font/standard.lua",
    ["pdfkit.font"] = "src/pdfkit/font.lua",
    ["pdfkit.font_factory"] = "src/pdfkit/font_factory.lua",
    ["pdfkit.fontkit.CmapProcessor"] = "src/pdfkit/fontkit/CmapProcessor.lua",
    ["pdfkit.fontkit.TTFFont"] = "src/pdfkit/fontkit/TTFFont.lua",
    ["pdfkit.fontkit.TrueTypeCollection"] = "src/pdfkit/fontkit/TrueTypeCollection.lua",
    ["pdfkit.fontkit.WOFFFont"] = "src/pdfkit/fontkit/WOFFFont.lua",
    ["pdfkit.fontkit.base"] = "src/pdfkit/fontkit/base.lua",
    ["pdfkit.fontkit.cff.font"] = "src/pdfkit/fontkit/cff/font.lua",
    ["pdfkit.fontkit.cff.operand"] = "src/pdfkit/fontkit/cff/operand.lua",
    ["pdfkit.fontkit.cff.standard_strings"] = "src/pdfkit/fontkit/cff/standard_strings.lua",
    ["pdfkit.fontkit.encodings"] = "src/pdfkit/fontkit/encodings.lua",
    ["pdfkit.fontkit.glyph.BBox"] = "src/pdfkit/fontkit/glyph/BBox.lua",
    ["pdfkit.fontkit.glyph.CFFGlyph"] = "src/pdfkit/fontkit/glyph/CFFGlyph.lua",
    ["pdfkit.fontkit.glyph.Glyph"] = "src/pdfkit/fontkit/glyph/Glyph.lua",
    ["pdfkit.fontkit.glyph.Path"] = "src/pdfkit/fontkit/glyph/Path.lua",
    ["pdfkit.fontkit.glyph.StandardNames"] = "src/pdfkit/fontkit/glyph/StandardNames.lua",
    ["pdfkit.fontkit.glyph.TTFGlyph"] = "src/pdfkit/fontkit/glyph/TTFGlyph.lua",
    ["pdfkit.fontkit.glyph.TTFGlyphEncoder"] = "src/pdfkit/fontkit/glyph/TTFGlyphEncoder.lua",
    ["pdfkit.fontkit"] = "src/pdfkit/fontkit/init.lua",
    ["pdfkit.fontkit.layout.GlyphPosition"] = "src/pdfkit/fontkit/layout/GlyphPosition.lua",
    ["pdfkit.fontkit.layout.GlyphRun"] = "src/pdfkit/fontkit/layout/GlyphRun.lua",
    ["pdfkit.fontkit.layout.KernProcessor"] = "src/pdfkit/fontkit/layout/KernProcessor.lua",
    ["pdfkit.fontkit.layout.LayoutEngine"] = "src/pdfkit/fontkit/layout/LayoutEngine.lua",
    ["pdfkit.fontkit.layout.Script"] = "src/pdfkit/fontkit/layout/Script.lua",
    ["pdfkit.fontkit.layout.UnicodeLayoutEngine"] = "src/pdfkit/fontkit/layout/UnicodeLayoutEngine.lua",
    ["pdfkit.fontkit.opentype.GPOSProcessor"] = "src/pdfkit/fontkit/opentype/GPOSProcessor.lua",
    ["pdfkit.fontkit.opentype.GSUBProcessor"] = "src/pdfkit/fontkit/opentype/GSUBProcessor.lua",
    ["pdfkit.fontkit.opentype.GlyphInfo"] = "src/pdfkit/fontkit/opentype/GlyphInfo.lua",
    ["pdfkit.fontkit.opentype.GlyphIterator"] = "src/pdfkit/fontkit/opentype/GlyphIterator.lua",
    ["pdfkit.fontkit.opentype.OTLayoutEngine"] = "src/pdfkit/fontkit/opentype/OTLayoutEngine.lua",
    ["pdfkit.fontkit.opentype.OTProcessor"] = "src/pdfkit/fontkit/opentype/OTProcessor.lua",
    ["pdfkit.fontkit.opentype.ShapingPlan"] = "src/pdfkit/fontkit/opentype/ShapingPlan.lua",
    ["pdfkit.fontkit.opentype.shapers.ArabicShaper"] = "src/pdfkit/fontkit/opentype/shapers/ArabicShaper.lua",
    ["pdfkit.fontkit.opentype.shapers.DefaultShaper"] = "src/pdfkit/fontkit/opentype/shapers/DefaultShaper.lua",
    ["pdfkit.fontkit.opentype.shapers.arabic_data"] = "src/pdfkit/fontkit/opentype/shapers/arabic_data.lua",
    ["pdfkit.fontkit.opentype.shapers"] = "src/pdfkit/fontkit/opentype/shapers/init.lua",
    ["pdfkit.fontkit.reader"] = "src/pdfkit/fontkit/reader.lua",
    ["pdfkit.fontkit.subset.CFFSubset"] = "src/pdfkit/fontkit/subset/CFFSubset.lua",
    ["pdfkit.fontkit.subset.Subset"] = "src/pdfkit/fontkit/subset/Subset.lua",
    ["pdfkit.fontkit.subset.TTFSubset"] = "src/pdfkit/fontkit/subset/TTFSubset.lua",
    ["pdfkit.fontkit.tables.GDEF"] = "src/pdfkit/fontkit/tables/GDEF.lua",
    ["pdfkit.fontkit.tables.GPOS"] = "src/pdfkit/fontkit/tables/GPOS.lua",
    ["pdfkit.fontkit.tables.GSUB"] = "src/pdfkit/fontkit/tables/GSUB.lua",
    ["pdfkit.fontkit.tables.OS2"] = "src/pdfkit/fontkit/tables/OS2.lua",
    ["pdfkit.fontkit.tables.cmap"] = "src/pdfkit/fontkit/tables/cmap.lua",
    ["pdfkit.fontkit.tables.cvt"] = "src/pdfkit/fontkit/tables/cvt.lua",
    ["pdfkit.fontkit.tables.directory"] = "src/pdfkit/fontkit/tables/directory.lua",
    ["pdfkit.fontkit.tables.fpgm"] = "src/pdfkit/fontkit/tables/fpgm.lua",
    ["pdfkit.fontkit.tables.glyf"] = "src/pdfkit/fontkit/tables/glyf.lua",
    ["pdfkit.fontkit.tables.head"] = "src/pdfkit/fontkit/tables/head.lua",
    ["pdfkit.fontkit.tables.hhea"] = "src/pdfkit/fontkit/tables/hhea.lua",
    ["pdfkit.fontkit.tables.hmtx"] = "src/pdfkit/fontkit/tables/hmtx.lua",
    ["pdfkit.fontkit.tables"] = "src/pdfkit/fontkit/tables/init.lua",
    ["pdfkit.fontkit.tables.kern"] = "src/pdfkit/fontkit/tables/kern.lua",
    ["pdfkit.fontkit.tables.loca"] = "src/pdfkit/fontkit/tables/loca.lua",
    ["pdfkit.fontkit.tables.maxp"] = "src/pdfkit/fontkit/tables/maxp.lua",
    ["pdfkit.fontkit.tables.name"] = "src/pdfkit/fontkit/tables/name.lua",
    ["pdfkit.fontkit.tables.opentype"] = "src/pdfkit/fontkit/tables/opentype.lua",
    ["pdfkit.fontkit.tables.post"] = "src/pdfkit/fontkit/tables/post.lua",
    ["pdfkit.fontkit.tables.prep"] = "src/pdfkit/fontkit/tables/prep.lua",
    ["pdfkit.fontkit.unicode"] = "src/pdfkit/fontkit/unicode.lua",
    ["pdfkit.fontkit.utils"] = "src/pdfkit/fontkit/utils.lua",
    ["pdfkit.fontkit.writer"] = "src/pdfkit/fontkit/writer.lua",
    ["pdfkit.gradient"] = "src/pdfkit/gradient.lua",
    ["pdfkit.image.jpeg"] = "src/pdfkit/image/jpeg.lua",
    ["pdfkit.image.png"] = "src/pdfkit/image/png.lua",
    ["pdfkit.image"] = "src/pdfkit/image.lua",
    ["pdfkit"] = "src/pdfkit/init.lua",
    ["pdfkit.jsmath"] = "src/pdfkit/jsmath.lua",
    ["pdfkit.jsstring"] = "src/pdfkit/jsstring.lua",
    ["pdfkit.line_breaker"] = "src/pdfkit/line_breaker.lua",
    ["pdfkit.line_wrapper"] = "src/pdfkit/line_wrapper.lua",
    ["pdfkit.linebreak.classes"] = "src/pdfkit/linebreak/classes.lua",
    ["pdfkit.linebreak.data"] = "src/pdfkit/linebreak/data.lua",
    ["pdfkit.linebreak.pairs"] = "src/pdfkit/linebreak/pairs.lua",
    ["pdfkit.md5"] = "src/pdfkit/md5.lua",
    ["pdfkit.metadata"] = "src/pdfkit/metadata.lua",
    ["pdfkit.mixins.acroform"] = "src/pdfkit/mixins/acroform.lua",
    ["pdfkit.mixins.annotations"] = "src/pdfkit/mixins/annotations.lua",
    ["pdfkit.mixins.attachments"] = "src/pdfkit/mixins/attachments.lua",
    ["pdfkit.mixins.color"] = "src/pdfkit/mixins/color.lua",
    ["pdfkit.mixins.fonts"] = "src/pdfkit/mixins/fonts.lua",
    ["pdfkit.mixins.images"] = "src/pdfkit/mixins/images.lua",
    ["pdfkit.mixins.markings"] = "src/pdfkit/mixins/markings.lua",
    ["pdfkit.mixins.metadata"] = "src/pdfkit/mixins/metadata.lua",
    ["pdfkit.mixins.outline"] = "src/pdfkit/mixins/outline.lua",
    ["pdfkit.mixins.pdfa"] = "src/pdfkit/mixins/pdfa.lua",
    ["pdfkit.mixins.pdfua"] = "src/pdfkit/mixins/pdfua.lua",
    ["pdfkit.mixins.srgb_profile"] = "src/pdfkit/mixins/srgb_profile.lua",
    ["pdfkit.mixins.subsets"] = "src/pdfkit/mixins/subsets.lua",
    ["pdfkit.mixins.table"] = "src/pdfkit/mixins/table.lua",
    ["pdfkit.mixins.text"] = "src/pdfkit/mixins/text.lua",
    ["pdfkit.mixins.vector"] = "src/pdfkit/mixins/vector.lua",
    ["pdfkit.name_tree"] = "src/pdfkit/name_tree.lua",
    ["pdfkit.number_tree"] = "src/pdfkit/number_tree.lua",
    ["pdfkit.object"] = "src/pdfkit/object.lua",
    ["pdfkit.outline"] = "src/pdfkit/outline.lua",
    ["pdfkit.page"] = "src/pdfkit/page.lua",
    ["pdfkit.path"] = "src/pdfkit/path.lua",
    ["pdfkit.pattern"] = "src/pdfkit/pattern.lua",
    ["pdfkit.png_reader"] = "src/pdfkit/png_reader.lua",
    ["pdfkit.reference"] = "src/pdfkit/reference.lua",
    ["pdfkit.spotcolor"] = "src/pdfkit/spotcolor.lua",
    ["pdfkit.structure_annotation"] = "src/pdfkit/structure_annotation.lua",
    ["pdfkit.structure_content"] = "src/pdfkit/structure_content.lua",
    ["pdfkit.structure_element"] = "src/pdfkit/structure_element.lua",
    ["pdfkit.table.accessibility"] = "src/pdfkit/table/accessibility.lua",
    ["pdfkit.table.index"] = "src/pdfkit/table/index.lua",
    ["pdfkit.table.normalize"] = "src/pdfkit/table/normalize.lua",
    ["pdfkit.table.render"] = "src/pdfkit/table/render.lua",
    ["pdfkit.table.size"] = "src/pdfkit/table/size.lua",
    ["pdfkit.table.style"] = "src/pdfkit/table/style.lua",
    ["pdfkit.table.utils"] = "src/pdfkit/table/utils.lua",
    ["pdfkit.tree"] = "src/pdfkit/tree.lua",
    ["pdfkit.utils"] = "src/pdfkit/utils.lua",
    ["pdfkit.zlib.deflate"] = "src/pdfkit/zlib/deflate.lua",
    ["pdfkit.zlib.trees"] = "src/pdfkit/zlib/trees.lua",
  },
}
