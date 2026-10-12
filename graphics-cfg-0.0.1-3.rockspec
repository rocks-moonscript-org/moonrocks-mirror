local git_ref = "19d1238af17df376cd46333b229579b0f7f3a41f"
local modrev = '0.0.1'
local specrev = '3'

local repo_url = 'https://github.com/latex3/graphics-cfg'

rockspec_format = '3.0'
package = 'graphics-cfg'
version = modrev .. '-' .. specrev

description = {
  summary = 'Sample configuration files for LaTeX color and graphics',
  detailed =
  [[This bundle includes color.cfg and graphics.cfg files that set default "driver" options for the color and graphics packages.

  It contains support for defaulting the new LuaTeX option which was added to graphics and color in the 2016-02-01 release. The LuaTeX option is only used for LuaTeX versions from 0.87, older versions use the pdfTeX option as before.]],
  labels = { 'Colour', 'Graphics' },
  homepage = repo_url,
  license = 'CC0-1.0'
}

dependencies = { 'graphics-def' }

source = {
  url = "https://github.com/latex3/graphics-cfg/archive/" .. git_ref .. ".zip",
  dir = package .. '-' .. git_ref
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/graphics-cfg.zip',
  }
end

build = {
  type = 'l3build',
  patches = {
    ["fix-build.lua.diff"] = [[
--- old/build.lua
+++ new/build.lua
@@ -15,7 +15,7 @@ typesetfiles =
   }


-installfiles = {"graphics.cfg"}
+installfiles = sourcefiles

 -- No automated tests for this bundle
 testfildir = ""
@@ -23,4 +23,6 @@ testfildir = ""

 -- Find and run the build system
 kpse.set_program_name ("kpsewhich")
+if not release_date then
 dofile (kpse.lookup ("l3build.lua"))
+end
]],
  },
}
