local git_ref = '2024-11-01'
local modrev = git_ref:gsub('-', '.')
local specrev = '2'

local repo_url = 'https://github.com/latex3/latex2e'

rockspec_format = '3.0'
package = 'latex-base'
version = modrev .. '-' .. specrev

dependencies = { 'l3kernel', 'l3backend', 'knuth-lib', 'latex-url', 'etex' }

description = {
  summary = 'Base sources of LaTeX',
  detailed =
  [[This bundle comprises the source of LaTeX itself, together with several packages which are considered ‘part of the kernel’. This bundle, together with the required packages, constitutes what every LaTeX distribution should contain.]],
  labels = { 'tex', 'latex' },
  homepage = 'https://ctan.org/pkg/latex-base',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/releases/download/release-' .. git_ref .. '-PL' .. specrev .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'builtin',
  patches = {
    -- https://github.com/RadioNoiseE/apltex/blob/52b75b9bc64bcf5543207e73875f39e7d4d88613/fmtdump/luatex.ini#L15
    ["add-latex-map.diff"] = [[
--- old/tex/latex/base/latex.ltx        2025-02-01 13:44:08.526557579 +0800
+++ new/tex/latex/base/latex.ltx        2025-02-02 17:29:29.041871796 +0800
@@ -20362,6 +20362,7 @@
 \@input{latex2e-first-aid-for-external-files.ltx}
 \makeatother
 \errorstopmode
+\everyjob=\expandafter{\the\everyjob\pdfextension mapfile {luatex.map}}
 \dump
 \endinput
 %%
]]
  },
  copy_directories = { 'doc', 'makeindex' },
  modules = {
    ltluatex = 'tex/latex/base/ltluatex.lua'
  },
  install = {
    conf = {
      ['../tex/latex/base/alltt.sty'] = 'tex/latex/base/alltt.sty',
      ['../tex/latex/base/ansinew.def'] = 'tex/latex/base/ansinew.def',
      ['../tex/latex/base/applemac.def'] = 'tex/latex/base/applemac.def',
      ['../tex/latex/base/article.cls'] = 'tex/latex/base/article.cls',
      ['../tex/latex/base/article.sty'] = 'tex/latex/base/article.sty',
      ['../tex/latex/base/ascii.def'] = 'tex/latex/base/ascii.def',
      ['../tex/latex/base/atbegshi-ltx.sty'] = 'tex/latex/base/atbegshi-ltx.sty',
      ['../tex/latex/base/atveryend-ltx.sty'] = 'tex/latex/base/atveryend-ltx.sty',
      ['../tex/latex/base/bezier.sty'] = 'tex/latex/base/bezier.sty',
      ['../tex/latex/base/bk10.clo'] = 'tex/latex/base/bk10.clo',
      ['../tex/latex/base/bk11.clo'] = 'tex/latex/base/bk11.clo',
      ['../tex/latex/base/bk12.clo'] = 'tex/latex/base/bk12.clo',
      ['../tex/latex/base/book.cls'] = 'tex/latex/base/book.cls',
      ['../tex/latex/base/book.sty'] = 'tex/latex/base/book.sty',
      ['../tex/latex/base/checkencodingsubset.tex'] = 'tex/latex/base/checkencodingsubset.tex',
      ['../tex/latex/base/cp437.def'] = 'tex/latex/base/cp437.def',
      ['../tex/latex/base/cp437de.def'] = 'tex/latex/base/cp437de.def',
      ['../tex/latex/base/cp850.def'] = 'tex/latex/base/cp850.def',
      ['../tex/latex/base/cp852.def'] = 'tex/latex/base/cp852.def',
      ['../tex/latex/base/cp858.def'] = 'tex/latex/base/cp858.def',
      ['../tex/latex/base/cp865.def'] = 'tex/latex/base/cp865.def',
      ['../tex/latex/base/cp1250.def'] = 'tex/latex/base/cp1250.def',
      ['../tex/latex/base/cp1252.def'] = 'tex/latex/base/cp1252.def',
      ['../tex/latex/base/cp1257.def'] = 'tex/latex/base/cp1257.def',
      ['../tex/latex/base/decmulti.def'] = 'tex/latex/base/decmulti.def',
      ['../tex/latex/base/doc-2016-02-15.sty'] = 'tex/latex/base/doc-2016-02-15.sty',
      ['../tex/latex/base/doc-2021-06-01.sty'] = 'tex/latex/base/doc-2021-06-01.sty',
      ['../tex/latex/base/doc.sty'] = 'tex/latex/base/doc.sty',
      ['../tex/latex/base/docstrip.tex'] = 'tex/latex/base/docstrip.tex',
      ['../tex/latex/base/exscale.sty'] = 'tex/latex/base/exscale.sty',
      ['../tex/latex/base/fix-cm.sty'] = 'tex/latex/base/fix-cm.sty',
      ['../tex/latex/base/fixltx2e.sty'] = 'tex/latex/base/fixltx2e.sty',
      ['../tex/latex/base/flafter.sty'] = 'tex/latex/base/flafter.sty',
      ['../tex/latex/base/fleqn.clo'] = 'tex/latex/base/fleqn.clo',
      ['../tex/latex/base/fleqn.sty'] = 'tex/latex/base/fleqn.sty',
      ['../tex/latex/base/fltrace.sty'] = 'tex/latex/base/fltrace.sty',
      ['../tex/latex/base/fontenc.sty'] = 'tex/latex/base/fontenc.sty',
      ['../tex/latex/base/fontmath.cfg'] = 'tex/latex/base/fontmath.cfg',
      ['../tex/latex/base/fontmath.ltx'] = 'tex/latex/base/fontmath.ltx',
      ['../tex/latex/base/fonttext.cfg'] = 'tex/latex/base/fonttext.cfg',
      ['../tex/latex/base/fonttext.ltx'] = 'tex/latex/base/fonttext.ltx',
      ['../tex/latex/base/graphpap.sty'] = 'tex/latex/base/graphpap.sty',
      ['../tex/latex/base/hyphen.ltx'] = 'tex/latex/base/hyphen.ltx',
      ['../tex/latex/base/idx.tex'] = 'tex/latex/base/idx.tex',
      ['../tex/latex/base/ifthen.sty'] = 'tex/latex/base/ifthen.sty',
      ['../tex/latex/base/inputenc.sty'] = 'tex/latex/base/inputenc.sty',
      ['../tex/latex/base/lablst.tex'] = 'tex/latex/base/lablst.tex',
      ['../tex/latex/base/latex.ltx'] = 'tex/latex/base/latex.ltx',
      ['../tex/latex/base/latex209.def'] = 'tex/latex/base/latex209.def',
      ['../tex/latex/base/latexrelease.sty'] = 'tex/latex/base/latexrelease.sty',
      ['../tex/latex/base/latexsym.sty'] = 'tex/latex/base/latexsym.sty',
      ['../tex/latex/base/latin1.def'] = 'tex/latex/base/latin1.def',
      ['../tex/latex/base/latin2.def'] = 'tex/latex/base/latin2.def',
      ['../tex/latex/base/latin3.def'] = 'tex/latex/base/latin3.def',
      ['../tex/latex/base/latin4.def'] = 'tex/latex/base/latin4.def',
      ['../tex/latex/base/latin5.def'] = 'tex/latex/base/latin5.def',
      ['../tex/latex/base/latin9.def'] = 'tex/latex/base/latin9.def',
      ['../tex/latex/base/latin10.def'] = 'tex/latex/base/latin10.def',
      ['../tex/latex/base/lcyenc.dfu'] = 'tex/latex/base/lcyenc.dfu',
      ['../tex/latex/base/leqno.clo'] = 'tex/latex/base/leqno.clo',
      ['../tex/latex/base/leqno.sty'] = 'tex/latex/base/leqno.sty',
      ['../tex/latex/base/letter.cls'] = 'tex/latex/base/letter.cls',
      ['../tex/latex/base/letter.sty'] = 'tex/latex/base/letter.sty',
      ['../tex/latex/base/lppl.tex'] = 'tex/latex/base/lppl.tex',
      ['../tex/latex/base/ltluatex.tex'] = 'tex/latex/base/ltluatex.tex',
      ['../tex/latex/base/ltnews.cls'] = 'tex/latex/base/ltnews.cls',
      ['../tex/latex/base/ltxcheck.tex'] = 'tex/latex/base/ltxcheck.tex',
      ['../tex/latex/base/ltxdoc.cfg'] = 'tex/latex/base/ltxdoc.cfg',
      ['../tex/latex/base/ltxdoc.cls'] = 'tex/latex/base/ltxdoc.cls',
      ['../tex/latex/base/ltxguide.cls'] = 'tex/latex/base/ltxguide.cls',
      ['../tex/latex/base/ly1enc.dfu'] = 'tex/latex/base/ly1enc.dfu',
      ['../tex/latex/base/macce.def'] = 'tex/latex/base/macce.def',
      ['../tex/latex/base/makeidx.sty'] = 'tex/latex/base/makeidx.sty',
      ['../tex/latex/base/minimal.cls'] = 'tex/latex/base/minimal.cls',
      ['../tex/latex/base/newlfont.sty'] = 'tex/latex/base/newlfont.sty',
      ['../tex/latex/base/next.def'] = 'tex/latex/base/next.def',
      ['../tex/latex/base/nfssfont.tex'] = 'tex/latex/base/nfssfont.tex',
      ['../tex/latex/base/oldlfont.sty'] = 'tex/latex/base/oldlfont.sty',
      ['../tex/latex/base/omlcmm.fd'] = 'tex/latex/base/omlcmm.fd',
      ['../tex/latex/base/omlcmr.fd'] = 'tex/latex/base/omlcmr.fd',
      ['../tex/latex/base/omlenc.def'] = 'tex/latex/base/omlenc.def',
      ['../tex/latex/base/omllcmm.fd'] = 'tex/latex/base/omllcmm.fd',
      ['../tex/latex/base/omscmr.fd'] = 'tex/latex/base/omscmr.fd',
      ['../tex/latex/base/omscmsy.fd'] = 'tex/latex/base/omscmsy.fd',
      ['../tex/latex/base/omsenc.def'] = 'tex/latex/base/omsenc.def',
      ['../tex/latex/base/omsenc.dfu'] = 'tex/latex/base/omsenc.dfu',
      ['../tex/latex/base/omslcmsy.fd'] = 'tex/latex/base/omslcmsy.fd',
      ['../tex/latex/base/omxcmex.fd'] = 'tex/latex/base/omxcmex.fd',
      ['../tex/latex/base/omxlcmex.fd'] = 'tex/latex/base/omxlcmex.fd',
      ['../tex/latex/base/openbib.sty'] = 'tex/latex/base/openbib.sty',
      ['../tex/latex/base/ot1cmdh.fd'] = 'tex/latex/base/ot1cmdh.fd',
      ['../tex/latex/base/ot1cmfib.fd'] = 'tex/latex/base/ot1cmfib.fd',
      ['../tex/latex/base/ot1cmfr.fd'] = 'tex/latex/base/ot1cmfr.fd',
      ['../tex/latex/base/ot1cmr.fd'] = 'tex/latex/base/ot1cmr.fd',
      ['../tex/latex/base/ot1cmss.fd'] = 'tex/latex/base/ot1cmss.fd',
      ['../tex/latex/base/ot1cmtt.fd'] = 'tex/latex/base/ot1cmtt.fd',
      ['../tex/latex/base/ot1cmvtt.fd'] = 'tex/latex/base/ot1cmvtt.fd',
      ['../tex/latex/base/ot1enc.def'] = 'tex/latex/base/ot1enc.def',
      ['../tex/latex/base/ot1enc.dfu'] = 'tex/latex/base/ot1enc.dfu',
      ['../tex/latex/base/ot1lcmss.fd'] = 'tex/latex/base/ot1lcmss.fd',
      ['../tex/latex/base/ot1lcmtt.fd'] = 'tex/latex/base/ot1lcmtt.fd',
      ['../tex/latex/base/ot2enc.dfu'] = 'tex/latex/base/ot2enc.dfu',
      ['../tex/latex/base/ot4enc.def'] = 'tex/latex/base/ot4enc.def',
      ['../tex/latex/base/preload.cfg'] = 'tex/latex/base/preload.cfg',
      ['../tex/latex/base/preload.ltx'] = 'tex/latex/base/preload.ltx',
      ['../tex/latex/base/proc.cls'] = 'tex/latex/base/proc.cls',
      ['../tex/latex/base/proc.sty'] = 'tex/latex/base/proc.sty',
      ['../tex/latex/base/report.cls'] = 'tex/latex/base/report.cls',
      ['../tex/latex/base/report.sty'] = 'tex/latex/base/report.sty',
      ['../tex/latex/base/sample2e.tex'] = 'tex/latex/base/sample2e.tex',
      ['../tex/latex/base/sfonts.def'] = 'tex/latex/base/sfonts.def',
      ['../tex/latex/base/shortvrb.sty'] = 'tex/latex/base/shortvrb.sty',
      ['../tex/latex/base/showidx.sty'] = 'tex/latex/base/showidx.sty',
      ['../tex/latex/base/size10.clo'] = 'tex/latex/base/size10.clo',
      ['../tex/latex/base/size11.clo'] = 'tex/latex/base/size11.clo',
      ['../tex/latex/base/size12.clo'] = 'tex/latex/base/size12.clo',
      ['../tex/latex/base/slides.cls'] = 'tex/latex/base/slides.cls',
      ['../tex/latex/base/slides.def'] = 'tex/latex/base/slides.def',
      ['../tex/latex/base/slides.sty'] = 'tex/latex/base/slides.sty',
      ['../tex/latex/base/small2e.tex'] = 'tex/latex/base/small2e.tex',
      ['../tex/latex/base/source2edoc.cls'] = 'tex/latex/base/source2edoc.cls',
      ['../tex/latex/base/structuredlog.sty'] = 'tex/latex/base/structuredlog.sty',
      ['../tex/latex/base/syntonly.sty'] = 'tex/latex/base/syntonly.sty',
      ['../tex/latex/base/t1cmdh.fd'] = 'tex/latex/base/t1cmdh.fd',
      ['../tex/latex/base/t1cmfib.fd'] = 'tex/latex/base/t1cmfib.fd',
      ['../tex/latex/base/t1cmfr.fd'] = 'tex/latex/base/t1cmfr.fd',
      ['../tex/latex/base/t1cmr.fd'] = 'tex/latex/base/t1cmr.fd',
      ['../tex/latex/base/t1cmss.fd'] = 'tex/latex/base/t1cmss.fd',
      ['../tex/latex/base/t1cmtt.fd'] = 'tex/latex/base/t1cmtt.fd',
      ['../tex/latex/base/t1cmvtt.fd'] = 'tex/latex/base/t1cmvtt.fd',
      ['../tex/latex/base/t1enc.def'] = 'tex/latex/base/t1enc.def',
      ['../tex/latex/base/t1enc.dfu'] = 'tex/latex/base/t1enc.dfu',
      ['../tex/latex/base/t1enc.sty'] = 'tex/latex/base/t1enc.sty',
      ['../tex/latex/base/t1lcmss.fd'] = 'tex/latex/base/t1lcmss.fd',
      ['../tex/latex/base/t1lcmtt.fd'] = 'tex/latex/base/t1lcmtt.fd',
      ['../tex/latex/base/t2aenc.dfu'] = 'tex/latex/base/t2aenc.dfu',
      ['../tex/latex/base/t2benc.dfu'] = 'tex/latex/base/t2benc.dfu',
      ['../tex/latex/base/t2cenc.dfu'] = 'tex/latex/base/t2cenc.dfu',
      ['../tex/latex/base/testpage.tex'] = 'tex/latex/base/testpage.tex',
      ['../tex/latex/base/texsys.cfg'] = 'tex/latex/base/texsys.cfg',
      ['../tex/latex/base/textcomp-2018-08-11.sty'] = 'tex/latex/base/textcomp-2018-08-11.sty',
      ['../tex/latex/base/textcomp.sty'] = 'tex/latex/base/textcomp.sty',
      ['../tex/latex/base/tracefnt.sty'] = 'tex/latex/base/tracefnt.sty',
      ['../tex/latex/base/ts1cmr.fd'] = 'tex/latex/base/ts1cmr.fd',
      ['../tex/latex/base/ts1cmss.fd'] = 'tex/latex/base/ts1cmss.fd',
      ['../tex/latex/base/ts1cmtt.fd'] = 'tex/latex/base/ts1cmtt.fd',
      ['../tex/latex/base/ts1cmvtt.fd'] = 'tex/latex/base/ts1cmvtt.fd',
      ['../tex/latex/base/ts1enc.def'] = 'tex/latex/base/ts1enc.def',
      ['../tex/latex/base/ts1enc.dfu'] = 'tex/latex/base/ts1enc.dfu',
      ['../tex/latex/base/tuenc.def'] = 'tex/latex/base/tuenc.def',
      ['../tex/latex/base/tulmdh.fd'] = 'tex/latex/base/tulmdh.fd',
      ['../tex/latex/base/tulmr.fd'] = 'tex/latex/base/tulmr.fd',
      ['../tex/latex/base/tulmss.fd'] = 'tex/latex/base/tulmss.fd',
      ['../tex/latex/base/tulmssq.fd'] = 'tex/latex/base/tulmssq.fd',
      ['../tex/latex/base/tulmtt.fd'] = 'tex/latex/base/tulmtt.fd',
      ['../tex/latex/base/tulmvtt.fd'] = 'tex/latex/base/tulmvtt.fd',
      ['../tex/latex/base/ucmr.fd'] = 'tex/latex/base/ucmr.fd',
      ['../tex/latex/base/ucmss.fd'] = 'tex/latex/base/ucmss.fd',
      ['../tex/latex/base/ucmtt.fd'] = 'tex/latex/base/ucmtt.fd',
      ['../tex/latex/base/ulasy.fd'] = 'tex/latex/base/ulasy.fd',
      ['../tex/latex/base/ullasy.fd'] = 'tex/latex/base/ullasy.fd',
      ['../tex/latex/base/utf8-2018.def'] = 'tex/latex/base/utf8-2018.def',
      ['../tex/latex/base/utf8.def'] = 'tex/latex/base/utf8.def',
      ['../tex/latex/base/utf8enc.dfu'] = 'tex/latex/base/utf8enc.dfu',
      ['../tex/latex/base/x2enc.dfu'] = 'tex/latex/base/x2enc.dfu',
    }
  }
}
