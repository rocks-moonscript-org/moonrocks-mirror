local git_ref = '2026-09-09'
local modrev = git_ref:gsub('-0', '-'):gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/l3build'

rockspec_format = '3.0'
package = 'l3build'
version = modrev .. '-' .. specrev

description = {
  summary = 'A testing and building system for LaTeX',
  detailed =
  [[The build system supports testing and building LaTeX3 code, on Linux, Mac OS X and Windows systems. The package offers:

    A unit testing system for (La)TeX code (whether kernel code or contributed packages);
    A system for typesetting package documentation; and
    An automated process for creating CTAN releases.

The package is essentially independent of other material released by the LaTeX3 team, and may be updated on a different schedule.]],
  labels = { 'Macro support', 'Package development', 'CTAN' },
  homepage = 'https://ctan.org/pkg/l3build',
  license = 'LPPL-1.3c'
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

dependencies = { "texrocks", "kpathsea" }

build = {
  type = 'builtin',
  patches = {
    ["fix-set_program.diff"] = [[
--- old/scripts/l3build/l3build-install.lua
+++ new/scripts/l3build/l3build-install.lua
@@ -36,7 +36,7 @@
 local insert = table.insert
 
 local function gethome()
-  set_program("latex")
+  set_program("kpsewhich")
   local result = options["texmfhome"] or var_value("TEXMFHOME")
   if not result or result == "" or match(result, os_pathsep) then
     print("Ambiguous TEXMFHOME setting: please use the --texmfhome option")
]],
    ["fix-exe.diff"] = [[
--- old/scripts/l3build/l3build-variables.lua
+++ new/scripts/l3build/l3build-variables.lua
@@ -105,15 +105,15 @@
 unpackdeps  = unpackdeps  or { }

 -- Executable names plus following options
-typesetexe = typesetexe or "pdflatex"
-unpackexe  = unpackexe  or "pdftex"
+typesetexe = typesetexe or "lualatex"
+unpackexe  = unpackexe  or "luatex"

 checkopts   = checkopts   or "-interaction=nonstopmode"
 typesetopts = typesetopts or "-interaction=nonstopmode"
 unpackopts  = unpackopts  or ""

 -- Engines for testing
-checkengines = checkengines or {"pdftex", "xetex", "luatex"}
+checkengines = checkengines or {"luatex"}
 checkformat  = checkformat  or "latex"
 specialformats = specialformats or { }
 specialformats.context = specialformats.context or {
]],
  },
  copy_directories = { },
  modules = {
    ["l3build-arguments"] = "scripts/l3build/l3build-arguments.lua",
    ["l3build-aux"] = "scripts/l3build/l3build-aux.lua",
    ["l3build-check"] = "scripts/l3build/l3build-check.lua",
    ["l3build-clean"] = "scripts/l3build/l3build-clean.lua",
    ["l3build-ctan"] = "scripts/l3build/l3build-ctan.lua",
    ["l3build-file-functions"] = "scripts/l3build/l3build-file-functions.lua",
    ["l3build-help"] = "scripts/l3build/l3build-help.lua",
    ["l3build-install"] = "scripts/l3build/l3build-install.lua",
    ["l3build-manifest-setup"] = "scripts/l3build/l3build-manifest-setup.lua",
    ["l3build-manifest"] = "scripts/l3build/l3build-manifest.lua",
    ["l3build-stdmain"] = "scripts/l3build/l3build-stdmain.lua",
    ["l3build-tagging"] = "scripts/l3build/l3build-tagging.lua",
    ["l3build-typesetting"] = "scripts/l3build/l3build-typesetting.lua",
    ["l3build-unpack"] = "scripts/l3build/l3build-unpack.lua",
    ["l3build-upload"] = "scripts/l3build/l3build-upload.lua",
    ["l3build-variables"] = "scripts/l3build/l3build-variables.lua",
    ["l3build-zip"] = "scripts/l3build/l3build-zip.lua",
    -- l3build lookup it
    ["l3build"] = "scripts/l3build/l3build.lua",
  },
  install = {
    bin = {
      l3build = 'scripts/l3build/l3build.lua'
    }
  }
}

deploy = {
  wrap_bin_scripts = false
}
