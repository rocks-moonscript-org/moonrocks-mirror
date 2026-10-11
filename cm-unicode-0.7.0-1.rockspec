local git_ref = '0.7.0'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'cm-unicode'
version = modrev .. '-' .. specrev

description = {
  summary = 'Computer Modern Unicode font family',
  detailed =
  [[Computer Modern Unicode fonts, converted from METAFONT sources using mftrace with autotrace backend and fontforge. Some characters in several fonts are copied from Blue Sky type 1 fonts released by AMS. Currently the fonts contain glyphs from Latin (METAFONT ec, tc, vnr), Cyrillic (lh), Greek (cbgreek when available) code sets and IPA extensions (from tipa). This font set contains 33 fonts.

This archive contains AFM, PFB and OTF versions; the OTF version of the Computer Modern Unicode fonts works with TeX engines that directly support OpenType features, such as XeTeX and LuaTeX.]],
  labels = { 'Font' },
  homepage = 'https://cm-unicode.sourceforge.io/',
  license = 'SIL'
}

source = {
  -- hard to build
  -- url = "https://master.dl.sourceforge.net/project/cm-unicode/cm-unicode/0.7.0/cm-unicode-0.7.0-src.tar.xz",
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/cm-unicode.zip",
  dir = 'cm-unicode'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/fonts/cm-unicode.zip',
    dir = 'cm-unicode'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../fonts/map/dvips/cm-unicode/cmu.map'] = 'tex/cmu.map',
      ['../fonts/enc/dvips/cm-unicode/cmu-ec.enc'] = 'tex/cmu-ec.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-ecsc.enc']  = 'tex/cmu-ecsc.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-g.enc']  = 'tex/cmu-g.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-la.enc']  = 'tex/cmu-la.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-lc.enc']  = 'tex/cmu-lc.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-ld.enc']  = 'tex/cmu-ld.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-rx.enc']  = 'tex/cmu-rx.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-tc.enc']  = 'tex/cmu-tc.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-tipa.enc']  = 'tex/cmu-tipa.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-tipx.enc']  = 'tex/cmu-tipx.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-ux.enc']  = 'tex/cmu-ux.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-uxsc.enc']  = 'tex/cmu-uxsc.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-lasc.enc']  = 'tex/cmu-lasc.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-lb.enc']  = 'tex/cmu-lb.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-vn.enc']  = 'tex/cmu-vn.enc',
      ['../fonts/enc/dvips/cm-unicode/cmu-gsc.enc']  = 'tex/cmu-gsc.enc',
      ['../fonts/opentype/public/cm-unicode/cmunbbx.otf'] = 'fonts/otf/cmunbbx.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbi.otf'] = 'fonts/otf/cmunbi.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbl.otf'] = 'fonts/otf/cmunbl.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbmo.otf'] = 'fonts/otf/cmunbmo.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbmr.otf'] = 'fonts/otf/cmunbmr.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbso.otf'] = 'fonts/otf/cmunbso.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbsr.otf'] = 'fonts/otf/cmunbsr.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbtl.otf'] = 'fonts/otf/cmunbtl.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbto.otf'] = 'fonts/otf/cmunbto.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbx.otf'] = 'fonts/otf/cmunbx.otf',
      ['../fonts/opentype/public/cm-unicode/cmunbxo.otf'] = 'fonts/otf/cmunbxo.otf',
      ['../fonts/opentype/public/cm-unicode/cmunci.otf'] = 'fonts/otf/cmunci.otf',
      ['../fonts/opentype/public/cm-unicode/cmunit.otf'] = 'fonts/otf/cmunit.otf',
      ['../fonts/opentype/public/cm-unicode/cmunobi.otf'] = 'fonts/otf/cmunobi.otf',
      ['../fonts/opentype/public/cm-unicode/cmunobx.otf'] = 'fonts/otf/cmunobx.otf',
      ['../fonts/opentype/public/cm-unicode/cmunorm.otf'] = 'fonts/otf/cmunorm.otf',
      ['../fonts/opentype/public/cm-unicode/cmunoti.otf'] = 'fonts/otf/cmunoti.otf',
      ['../fonts/opentype/public/cm-unicode/cmunrb.otf'] = 'fonts/otf/cmunrb.otf',
      ['../fonts/opentype/public/cm-unicode/cmunrm.otf'] = 'fonts/otf/cmunrm.otf',
      ['../fonts/opentype/public/cm-unicode/cmunsi.otf'] = 'fonts/otf/cmunsi.otf',
      ['../fonts/opentype/public/cm-unicode/cmunsl.otf'] = 'fonts/otf/cmunsl.otf',
      ['../fonts/opentype/public/cm-unicode/cmunso.otf'] = 'fonts/otf/cmunso.otf',
      ['../fonts/opentype/public/cm-unicode/cmunss.otf'] = 'fonts/otf/cmunss.otf',
      ['../fonts/opentype/public/cm-unicode/cmunssdc.otf'] = 'fonts/otf/cmunssdc.otf',
      ['../fonts/opentype/public/cm-unicode/cmunst.otf'] = 'fonts/otf/cmunst.otf',
      ['../fonts/opentype/public/cm-unicode/cmunsx.otf'] = 'fonts/otf/cmunsx.otf',
      ['../fonts/opentype/public/cm-unicode/cmuntb.otf'] = 'fonts/otf/cmuntb.otf',
      ['../fonts/opentype/public/cm-unicode/cmunti.otf'] = 'fonts/otf/cmunti.otf',
      ['../fonts/opentype/public/cm-unicode/cmuntt.otf'] = 'fonts/otf/cmuntt.otf',
      ['../fonts/opentype/public/cm-unicode/cmuntx.otf'] = 'fonts/otf/cmuntx.otf',
      ['../fonts/opentype/public/cm-unicode/cmunui.otf'] = 'fonts/otf/cmunui.otf',
      ['../fonts/opentype/public/cm-unicode/cmunvi.otf'] = 'fonts/otf/cmunvi.otf',
      ['../fonts/opentype/public/cm-unicode/cmunvt.otf'] = 'fonts/otf/cmunvt.otf',
      ['../fonts/afm/public/cm-unicode/cmunbbx.afm'] = 'fonts/afm/cmunbbx.afm',
      ['../fonts/afm/public/cm-unicode/cmunbi.afm'] = 'fonts/afm/cmunbi.afm',
      ['../fonts/afm/public/cm-unicode/cmunbl.afm'] = 'fonts/afm/cmunbl.afm',
      ['../fonts/afm/public/cm-unicode/cmunbmo.afm'] = 'fonts/afm/cmunbmo.afm',
      ['../fonts/afm/public/cm-unicode/cmunbmr.afm'] = 'fonts/afm/cmunbmr.afm',
      ['../fonts/afm/public/cm-unicode/cmunbso.afm'] = 'fonts/afm/cmunbso.afm',
      ['../fonts/afm/public/cm-unicode/cmunbsr.afm'] = 'fonts/afm/cmunbsr.afm',
      ['../fonts/afm/public/cm-unicode/cmunbtl.afm'] = 'fonts/afm/cmunbtl.afm',
      ['../fonts/afm/public/cm-unicode/cmunbto.afm'] = 'fonts/afm/cmunbto.afm',
      ['../fonts/afm/public/cm-unicode/cmunbx.afm'] = 'fonts/afm/cmunbx.afm',
      ['../fonts/afm/public/cm-unicode/cmunbxo.afm'] = 'fonts/afm/cmunbxo.afm',
      ['../fonts/afm/public/cm-unicode/cmunci.afm'] = 'fonts/afm/cmunci.afm',
      ['../fonts/afm/public/cm-unicode/cmunit.afm'] = 'fonts/afm/cmunit.afm',
      ['../fonts/afm/public/cm-unicode/cmunobi.afm'] = 'fonts/afm/cmunobi.afm',
      ['../fonts/afm/public/cm-unicode/cmunobx.afm'] = 'fonts/afm/cmunobx.afm',
      ['../fonts/afm/public/cm-unicode/cmunorm.afm'] = 'fonts/afm/cmunorm.afm',
      ['../fonts/afm/public/cm-unicode/cmunoti.afm'] = 'fonts/afm/cmunoti.afm',
      ['../fonts/afm/public/cm-unicode/cmunrb.afm'] = 'fonts/afm/cmunrb.afm',
      ['../fonts/afm/public/cm-unicode/cmunrm.afm'] = 'fonts/afm/cmunrm.afm',
      ['../fonts/afm/public/cm-unicode/cmunsi.afm'] = 'fonts/afm/cmunsi.afm',
      ['../fonts/afm/public/cm-unicode/cmunsl.afm'] = 'fonts/afm/cmunsl.afm',
      ['../fonts/afm/public/cm-unicode/cmunso.afm'] = 'fonts/afm/cmunso.afm',
      ['../fonts/afm/public/cm-unicode/cmunss.afm'] = 'fonts/afm/cmunss.afm',
      ['../fonts/afm/public/cm-unicode/cmunssdc.afm'] = 'fonts/afm/cmunssdc.afm',
      ['../fonts/afm/public/cm-unicode/cmunst.afm'] = 'fonts/afm/cmunst.afm',
      ['../fonts/afm/public/cm-unicode/cmunsx.afm'] = 'fonts/afm/cmunsx.afm',
      ['../fonts/afm/public/cm-unicode/cmuntb.afm'] = 'fonts/afm/cmuntb.afm',
      ['../fonts/afm/public/cm-unicode/cmunti.afm'] = 'fonts/afm/cmunti.afm',
      ['../fonts/afm/public/cm-unicode/cmuntt.afm'] = 'fonts/afm/cmuntt.afm',
      ['../fonts/afm/public/cm-unicode/cmuntx.afm'] = 'fonts/afm/cmuntx.afm',
      ['../fonts/afm/public/cm-unicode/cmunui.afm'] = 'fonts/afm/cmunui.afm',
      ['../fonts/afm/public/cm-unicode/cmunvi.afm'] = 'fonts/afm/cmunvi.afm',
      ['../fonts/afm/public/cm-unicode/cmunvt.afm'] = 'fonts/afm/cmunvt.afm',
      ['../fonts/type1/public/cm-unicode/cmunbbx.pfb'] = 'fonts/pfb/cmunbbx.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbi.pfb'] = 'fonts/pfb/cmunbi.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbl.pfb'] = 'fonts/pfb/cmunbl.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbmo.pfb'] = 'fonts/pfb/cmunbmo.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbmr.pfb'] = 'fonts/pfb/cmunbmr.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbso.pfb'] = 'fonts/pfb/cmunbso.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbsr.pfb'] = 'fonts/pfb/cmunbsr.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbtl.pfb'] = 'fonts/pfb/cmunbtl.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbto.pfb'] = 'fonts/pfb/cmunbto.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbx.pfb'] = 'fonts/pfb/cmunbx.pfb',
      ['../fonts/type1/public/cm-unicode/cmunbxo.pfb'] = 'fonts/pfb/cmunbxo.pfb',
      ['../fonts/type1/public/cm-unicode/cmunci.pfb'] = 'fonts/pfb/cmunci.pfb',
      ['../fonts/type1/public/cm-unicode/cmunit.pfb'] = 'fonts/pfb/cmunit.pfb',
      ['../fonts/type1/public/cm-unicode/cmunobi.pfb'] = 'fonts/pfb/cmunobi.pfb',
      ['../fonts/type1/public/cm-unicode/cmunobx.pfb'] = 'fonts/pfb/cmunobx.pfb',
      ['../fonts/type1/public/cm-unicode/cmunorm.pfb'] = 'fonts/pfb/cmunorm.pfb',
      ['../fonts/type1/public/cm-unicode/cmunoti.pfb'] = 'fonts/pfb/cmunoti.pfb',
      ['../fonts/type1/public/cm-unicode/cmunrb.pfb'] = 'fonts/pfb/cmunrb.pfb',
      ['../fonts/type1/public/cm-unicode/cmunrm.pfb'] = 'fonts/pfb/cmunrm.pfb',
      ['../fonts/type1/public/cm-unicode/cmunsi.pfb'] = 'fonts/pfb/cmunsi.pfb',
      ['../fonts/type1/public/cm-unicode/cmunsl.pfb'] = 'fonts/pfb/cmunsl.pfb',
      ['../fonts/type1/public/cm-unicode/cmunso.pfb'] = 'fonts/pfb/cmunso.pfb',
      ['../fonts/type1/public/cm-unicode/cmunss.pfb'] = 'fonts/pfb/cmunss.pfb',
      ['../fonts/type1/public/cm-unicode/cmunssdc.pfb'] = 'fonts/pfb/cmunssdc.pfb',
      ['../fonts/type1/public/cm-unicode/cmunst.pfb'] = 'fonts/pfb/cmunst.pfb',
      ['../fonts/type1/public/cm-unicode/cmunsx.pfb'] = 'fonts/pfb/cmunsx.pfb',
      ['../fonts/type1/public/cm-unicode/cmuntb.pfb'] = 'fonts/pfb/cmuntb.pfb',
      ['../fonts/type1/public/cm-unicode/cmunti.pfb'] = 'fonts/pfb/cmunti.pfb',
      ['../fonts/type1/public/cm-unicode/cmuntt.pfb'] = 'fonts/pfb/cmuntt.pfb',
      ['../fonts/type1/public/cm-unicode/cmuntx.pfb'] = 'fonts/pfb/cmuntx.pfb',
      ['../fonts/type1/public/cm-unicode/cmunui.pfb'] = 'fonts/pfb/cmunui.pfb',
      ['../fonts/type1/public/cm-unicode/cmunvi.pfb'] = 'fonts/pfb/cmunvi.pfb',
      ['../fonts/type1/public/cm-unicode/cmunvt.pfb'] = 'fonts/pfb/cmunvt.pfb',
    }
  }
}
