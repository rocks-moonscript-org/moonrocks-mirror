local git_ref = '1.17.0'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://gitlab.lisn.upsaclay.fr/texlive/luatex'

rockspec_format = '3.0'
package = 'texlua'
version = modrev .. '-' .. specrev

description = {
  summary = 'an extended version of pdfTeX using Lua as an embedded scripting language',
  detailed =
  [[The LuaTeX project's main objective is to provide an open and configurable variant of TeX while at the same time offering downward compatibility]],
  labels = { 'tex', 'lua' },
  homepage = 'https://www.luatex.org/',
  license = "GPL-2.0"
}

source = {
  url = repo_url .. '/-/archive/' .. git_ref .. '/luatex-' .. git_ref .. '.zip',
  dir = 'luatex-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'command',
  patches = {
     ["customize-texmf.diff"] = [[
--- old/source/texk/kpathsea/texmf.cnf	2023-04-29 22:20:25.000000000 +0800
+++ new/source/texk/kpathsea/texmf.cnf	2025-02-02 10:09:30.869719891 +0800
@@ -574,33 +574,7 @@
 % since we don't want to scatter ../'s throughout the value.  Hence we
 % explicitly list every directory.  Arguably more understandable anyway.
 %
-TEXMFCNF = {\
-$SELFAUTOLOC,\
-$SELFAUTOLOC/share/texmf-local/web2c,\
-$SELFAUTOLOC/share/texmf-dist/web2c,\
-$SELFAUTOLOC/share/texmf/web2c,\
-$SELFAUTOLOC/texmf-local/web2c,\
-$SELFAUTOLOC/texmf-dist/web2c,\
-$SELFAUTOLOC/texmf/web2c,\
-\
-$SELFAUTODIR,\
-$SELFAUTODIR/share/texmf-local/web2c,\
-$SELFAUTODIR/share/texmf-dist/web2c,\
-$SELFAUTODIR/share/texmf/web2c,\
-$SELFAUTODIR/texmf-local/web2c,\
-$SELFAUTODIR/texmf-dist/web2c,\
-$SELFAUTODIR/texmf/web2c,\
-\
-$SELFAUTOGRANDPARENT/texmf-local/web2c,\
-$SELFAUTOPARENT,\
-\
-$SELFAUTOPARENT/share/texmf-local/web2c,\
-$SELFAUTOPARENT/share/texmf-dist/web2c,\
-$SELFAUTOPARENT/share/texmf/web2c,\
-$SELFAUTOPARENT/texmf-local/web2c,\
-$SELFAUTOPARENT/texmf-dist/web2c,\
-$SELFAUTOPARENT/texmf/web2c\
-}
+TEXMFCNF = {~/.config/texmf,~/.local/share/texmf,\$SELFAUTODIR}/web2c
 %
 % For reference, here is the old brace-using definition:
 %TEXMFCNF = {$SELFAUTOLOC,$SELFAUTODIR,$SELFAUTOPARENT}{,{/share,}/texmf{-local,}/web2c}
  ]]
  },
  build_command = [[./build.sh --nolua53 --luahb --parallel]],
  install = {
    bin = {
      texlua = 'build/texk/web2c/luahbtex'
    },
    conf = {
      ['../web2c/texmf.cnf'] = 'source/texk/kpathsea/texmf.cnf'
    }
  }
}
