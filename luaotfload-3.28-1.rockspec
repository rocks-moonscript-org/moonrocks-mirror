local git_ref = 'v3.28'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = 'https://github.com/latex3/luaotfload'

rockspec_format = '3.0'
package = 'luaotfload'
version = modrev .. '-' .. specrev

dependencies = { 'texlua', 'lualibs', 'lua-uni-algos' }

description = {
  summary = 'OpenType ‘loader’ for Plain TeX and LaTeX',
  detailed =
  [[The package adopts the TrueType/OpenType Font loader code provided in ConTeXt, and adapts it to use in Plain TeX and LaTeX. It works under LuaLaTeX only.]],
  labels = { 'tex', 'latex', 'luatex' },
  homepage = 'https://ctan.org/pkg/luaotfload',
  license = 'GPL-2.0'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' },
  modules = {
    ['fontloader-2023-12-28'] = 'tex/luatex/luaotfload/fontloader-2023-12-28.lua',
    ['fontloader-basics-chr'] = 'tex/luatex/luaotfload/fontloader-basics-chr.lua',
    ['fontloader-basics-gen'] = 'tex/luatex/luaotfload/fontloader-basics-gen.lua',
    ['fontloader-basics-nod'] = 'tex/luatex/luaotfload/fontloader-basics-nod.lua',
    ['fontloader-data-con'] = 'tex/luatex/luaotfload/fontloader-data-con.lua',
    ['fontloader-font-afk'] = 'tex/luatex/luaotfload/fontloader-font-afk.lua',
    ['fontloader-font-cff'] = 'tex/luatex/luaotfload/fontloader-font-cff.lua',
    ['fontloader-font-cid'] = 'tex/luatex/luaotfload/fontloader-font-cid.lua',
    ['fontloader-font-con'] = 'tex/luatex/luaotfload/fontloader-font-con.lua',
    ['fontloader-font-def'] = 'tex/luatex/luaotfload/fontloader-font-def.lua',
    ['fontloader-font-dsp'] = 'tex/luatex/luaotfload/fontloader-font-dsp.lua',
    ['fontloader-font-imp-effects'] = 'tex/luatex/luaotfload/fontloader-font-imp-effects.lua',
    ['fontloader-font-imp-italics'] = 'tex/luatex/luaotfload/fontloader-font-imp-italics.lua',
    ['fontloader-font-imp-ligatures'] = 'tex/luatex/luaotfload/fontloader-font-imp-ligatures.lua',
    ['fontloader-font-imp-tex'] = 'tex/luatex/luaotfload/fontloader-font-imp-tex.lua',
    ['fontloader-font-ini'] = 'tex/luatex/luaotfload/fontloader-font-ini.lua',
    ['fontloader-font-lua'] = 'tex/luatex/luaotfload/fontloader-font-lua.lua',
    ['fontloader-font-map'] = 'tex/luatex/luaotfload/fontloader-font-map.lua',
    ['fontloader-font-ocl'] = 'tex/luatex/luaotfload/fontloader-font-ocl.lua',
    ['fontloader-font-one'] = 'tex/luatex/luaotfload/fontloader-font-one.lua',
    ['fontloader-font-onr'] = 'tex/luatex/luaotfload/fontloader-font-onr.lua',
    ['fontloader-font-osd'] = 'tex/luatex/luaotfload/fontloader-font-osd.lua',
    ['fontloader-font-ota'] = 'tex/luatex/luaotfload/fontloader-font-ota.lua',
    ['fontloader-font-otc'] = 'tex/luatex/luaotfload/fontloader-font-otc.lua',
    ['fontloader-font-oti'] = 'tex/luatex/luaotfload/fontloader-font-oti.lua',
    ['fontloader-font-otj'] = 'tex/luatex/luaotfload/fontloader-font-otj.lua',
    ['fontloader-font-otl'] = 'tex/luatex/luaotfload/fontloader-font-otl.lua',
    ['fontloader-font-oto'] = 'tex/luatex/luaotfload/fontloader-font-oto.lua',
    ['fontloader-font-otr'] = 'tex/luatex/luaotfload/fontloader-font-otr.lua',
    ['fontloader-font-ots'] = 'tex/luatex/luaotfload/fontloader-font-ots.lua',
    ['fontloader-font-ott'] = 'tex/luatex/luaotfload/fontloader-font-ott.lua',
    ['fontloader-font-oup'] = 'tex/luatex/luaotfload/fontloader-font-oup.lua',
    ['fontloader-font-shp'] = 'tex/luatex/luaotfload/fontloader-font-shp.lua',
    ['fontloader-font-ttf'] = 'tex/luatex/luaotfload/fontloader-font-ttf.lua',
    ['fontloader-font-vfc'] = 'tex/luatex/luaotfload/fontloader-font-vfc.lua',
    ['fontloader-fonts-def'] = 'tex/luatex/luaotfload/fontloader-fonts-def.lua',
    ['fontloader-fonts-enc'] = 'tex/luatex/luaotfload/fontloader-fonts-enc.lua',
    ['fontloader-fonts-ext'] = 'tex/luatex/luaotfload/fontloader-fonts-ext.lua',
    ['fontloader-fonts-gbn'] = 'tex/luatex/luaotfload/fontloader-fonts-gbn.lua',
    ['fontloader-fonts-lig'] = 'tex/luatex/luaotfload/fontloader-fonts-lig.lua',
    ['fontloader-fonts-mis'] = 'tex/luatex/luaotfload/fontloader-fonts-mis.lua',
    ['fontloader-fonts-syn'] = 'tex/luatex/luaotfload/fontloader-fonts-syn.lua',
    ['fontloader-fonts-tfm'] = 'tex/luatex/luaotfload/fontloader-fonts-tfm.lua',
    ['fontloader-l-boolean'] = 'tex/luatex/luaotfload/fontloader-l-boolean.lua',
    ['fontloader-l-file'] = 'tex/luatex/luaotfload/fontloader-l-file.lua',
    ['fontloader-l-function'] = 'tex/luatex/luaotfload/fontloader-l-function.lua',
    ['fontloader-l-io'] = 'tex/luatex/luaotfload/fontloader-l-io.lua',
    ['fontloader-l-lpeg'] = 'tex/luatex/luaotfload/fontloader-l-lpeg.lua',
    ['fontloader-l-lua'] = 'tex/luatex/luaotfload/fontloader-l-lua.lua',
    ['fontloader-l-math'] = 'tex/luatex/luaotfload/fontloader-l-math.lua',
    ['fontloader-l-string'] = 'tex/luatex/luaotfload/fontloader-l-string.lua',
    ['fontloader-l-table'] = 'tex/luatex/luaotfload/fontloader-l-table.lua',
    ['fontloader-l-unicode'] = 'tex/luatex/luaotfload/fontloader-l-unicode.lua',
    ['fontloader-reference'] = 'tex/luatex/luaotfload/fontloader-reference.lua',
    ['fontloader-util-fil'] = 'tex/luatex/luaotfload/fontloader-util-fil.lua',
    ['fontloader-util-str'] = 'tex/luatex/luaotfload/fontloader-util-str.lua',
    ['luaotfload-arabic'] = 'tex/luatex/luaotfload/luaotfload-arabic.lua',
    ['luaotfload-auxiliary'] = 'tex/luatex/luaotfload/luaotfload-auxiliary.lua',
    ['luaotfload-bcp47'] = 'tex/luatex/luaotfload/luaotfload-bcp47.lua',
    ['luaotfload-case'] = 'tex/luatex/luaotfload/luaotfload-case.lua',
    ['luaotfload-characters'] = 'tex/luatex/luaotfload/luaotfload-characters.lua',
    ['luaotfload-colors'] = 'tex/luatex/luaotfload/luaotfload-colors.lua',
    ['luaotfload-configuration'] = 'tex/luatex/luaotfload/luaotfload-configuration.lua',
    ['luaotfload-database'] = 'tex/luatex/luaotfload/luaotfload-database.lua',
    ['luaotfload-diagnostics'] = 'tex/luatex/luaotfload/luaotfload-diagnostics.lua',
    ['luaotfload-dvi'] = 'tex/luatex/luaotfload/luaotfload-dvi.lua',
    ['luaotfload-embolden'] = 'tex/luatex/luaotfload/luaotfload-embolden.lua',
    ['luaotfload-fallback'] = 'tex/luatex/luaotfload/luaotfload-fallback.lua',
    ['luaotfload-features'] = 'tex/luatex/luaotfload/luaotfload-features.lua',
    ['luaotfload-filelist'] = 'tex/luatex/luaotfload/luaotfload-filelist.lua',
    ['luaotfload-glyphlist'] = 'tex/luatex/luaotfload/luaotfload-glyphlist.lua',
    ['luaotfload-harf-define'] = 'tex/luatex/luaotfload/luaotfload-harf-define.lua',
    ['luaotfload-harf-plug'] = 'tex/luatex/luaotfload/luaotfload-harf-plug.lua',
    ['luaotfload-harf-var-cff2'] = 'tex/luatex/luaotfload/luaotfload-harf-var-cff2.lua',
    ['luaotfload-harf-var-t2-writer'] = 'tex/luatex/luaotfload/luaotfload-harf-var-t2-writer.lua',
    ['luaotfload-harf-var-ttf'] = 'tex/luatex/luaotfload/luaotfload-harf-var-ttf.lua',
    ['luaotfload-init'] = 'tex/luatex/luaotfload/luaotfload-init.lua',
    ['luaotfload-letterspace'] = 'tex/luatex/luaotfload/luaotfload-letterspace.lua',
    ['luaotfload-loaders'] = 'tex/luatex/luaotfload/luaotfload-loaders.lua',
    ['luaotfload-log'] = 'tex/luatex/luaotfload/luaotfload-log.lua',
    ['luaotfload-main'] = 'tex/luatex/luaotfload/luaotfload-main.lua',
    ['luaotfload-multiscript'] = 'tex/luatex/luaotfload/luaotfload-multiscript.lua',
    ['luaotfload-notdef'] = 'tex/luatex/luaotfload/luaotfload-notdef.lua',
    ['luaotfload-parsers'] = 'tex/luatex/luaotfload/luaotfload-parsers.lua',
    ['luaotfload-realpath'] = 'tex/luatex/luaotfload/luaotfload-realpath.lua',
    ['luaotfload-resolvers'] = 'tex/luatex/luaotfload/luaotfload-resolvers.lua',
    ['luaotfload-scripts'] = 'tex/luatex/luaotfload/luaotfload-scripts.lua',
    ['luaotfload-status'] = 'tex/luatex/luaotfload/luaotfload-status.lua',
    ['luaotfload-suppress'] = 'tex/luatex/luaotfload/luaotfload-suppress.lua',
    ['luaotfload-szss'] = 'tex/luatex/luaotfload/luaotfload-szss.lua',
    ['luaotfload-tounicode'] = 'tex/luatex/luaotfload/luaotfload-tounicode.lua',
    ['luaotfload-unicode'] = 'tex/luatex/luaotfload/luaotfload-unicode.lua',
    ['luaotfload'] = 'tex/luatex/luaotfload/luaotfload.lua',
  },
  install = {
    bin = {
      ['luaotfload-tool'] = 'scripts/luaotfload/luaotfload-tool.lua',
    },
    conf = {
      ['../tex/luatex/luaotfload/luaotfload.sty'] = 'tex/luatex/luaotfload/luaotfload.sty',
      ['../tex/luatex/luaotfload/luaotfload-blacklist.cnf'] = 'tex/luatex/luaotfload/luaotfload-blacklist.cnf'
    }
  }
}
