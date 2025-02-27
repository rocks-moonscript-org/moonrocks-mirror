local git_ref = '2024-10-16'
local modrev = git_ref:gsub('-', '.')
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
  labels = { 'tex' },
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

dependencies = { 'texlua' }

build = {
  type = 'builtin',
  patches = {
    ["fix-require.diff"] = [[
--- old/scripts/l3build/l3build.lua 2024-10-16 17:35:37.000000000 +0800
+++ new/scripts/l3build/l3build.lua     2025-02-02 11:31:50.723398714 +0800
@@ -43,10 +43,9 @@
 local open             = io.open

 -- l3build setup and functions
-kpse.set_program_name("kpsewhich")
-build_kpse_path = match(lookup("l3build.lua"),"(.*[/])")
+kpse.set_program_name(arg[0])
 local function build_require(s)
-  require(lookup("l3build-"..s..".lua", { path = build_kpse_path } ) )
+  require("l3build-"..s)
 end

 -- Minimal code to do basic checks
]],
    ["fix-get_script_name.diff"] = [[
--- old/scripts/l3build/l3build-aux.lua	2025-02-04 12:09:35.963367561 +0800
+++ new/scripts/l3build/l3build-aux.lua	2025-02-04 13:56:25.823860010 +0800
@@ -89,11 +89,11 @@
 ---`texlua l3build.lua` -> `/Library/TeX/texbin/l3build.lua` or `./l3build.lua`
 ---@return string
 local function get_script_name()
-  if match(arg[0], "l3build$") or match(arg[0], "l3build%.lua$") then
-    return lookup("l3build.lua")
-  else
+  -- if match(arg[0], "l3build$") or match(arg[0], "l3build%.lua$") then
+  --   return lookup("l3build.lua")
+  -- else
     return arg[0] -- Why no lookup here?
-  end
+  -- end
 end
 
 -- Performs the task named target given modules in a bundle.
]],
    ["fix-exe.diff"] = [[
--- old/scripts/l3build/l3build-variables.lua	2024-10-16 17:35:37.000000000 +0800
+++ new/scripts/l3build/l3build-variables.lua	2025-02-02 11:31:50.723398714 +0800
@@ -105,15 +105,15 @@
 unpackdeps  = unpackdeps  or { }

 -- Executable names plus following options
-typesetexe = typesetexe or "pdflatex"
-unpackexe  = unpackexe  or "pdftex"
+typesetexe = typesetexe or "lualatex"
+unpackexe  = unpackexe  or "lualatex"

 checkopts   = checkopts   or "-interaction=nonstopmode"
 typesetopts = typesetopts or "-interaction=nonstopmode"
 unpackopts  = unpackopts  or "-interaction=nonstopmode"

 -- Engines for testing
-checkengines = checkengines or {"pdftex", "xetex", "luatex"}
+checkengines = checkengines or {}
 checkformat  = checkformat  or "latex"
 specialformats = specialformats or { }
 specialformats.context = specialformats.context or {
]],
  },
  copy_directories = { 'tex', 'doc' },
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
  },
  install = {
    bin = {
      l3build = 'scripts/l3build/l3build.lua'
    }
  }
}
