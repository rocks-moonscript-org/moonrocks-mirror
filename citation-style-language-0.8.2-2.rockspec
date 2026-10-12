local git_ref = 'v0.8.2'
local modrev = git_ref:gsub('^v', '')
local specrev = 2
local repo_url = "https://github.com/zepinglee/citeproc-lua"

rockspec_format = "3.0"
package = "citation-style-language"
version = modrev .. '-' .. specrev

source = {
  url = repo_url .. "/archive/" .. git_ref .. ".zip",
  dir = 'citeproc-lua-' .. modrev
}

description = {
   summary = "Bibliography formatting with Citation Style Language",
   detailed =
   "The Citation Style Language (CSL) is an XML-based language that defines the formats of citations and bibliography. There are currently thousands of styles in CSL including the most widely used APA, Chicago, Vancouver, etc. The citation-style-language package is aimed to provide another reference formatting method for LaTeX that utilizes the CSL styles. It contains a citation processor implemented in pure Lua (citeproc-lua) which reads bibliographic metadata and performs sorting and formatting on both citations and bibliography according to the selected CSL style. A LaTeX package (citation-style-language.sty) is provided to communicate with the processor.",
   labels = { 'Biblio', 'Use Lua', 'Experimental LaTeX3' },
   homepage = repo_url,
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
   "api7-lua-tinyyaml >= 0.4.3",
   "datafile >= 0.8",
   -- "lpeg >= 1.0.2",
   "lua-uca-temp >= 0.1",
   -- "luautf8 >= 0.1",
   "mhluaxml-temp >= 0.1",
   "citation-style-language-styles",
   "citation-style-language-locales",
   "l3packages",
   "lualibs",
   "lua-uni-algos",
}

build = {
   type = "l3build",
   patches = {
      -- https://github.com/zepinglee/citeproc-lua/issues/96
      ['fix-other-text-files.diff'] = [[
--- old/citeproc/citeproc-manager.lua
+++ new/citeproc/citeproc-manager.lua
@@ -113,7 +113,7 @@
 local function make_citeproc_sys(item_dict)
   local citeproc_sys = {
     retrieveLocale = function (lang)
-      local locale_file_format = "csl-locales-%s.xml"
+      local locale_file_format = "locales-%s.xml"
       local filename = string.format(locale_file_format, lang)
       return read_file(filename, nil, "locale file")
     end,
]],
      ['do-not-install-csl.diff'] = [[
--- old/build.lua
+++ new/build.lua
@@ -20,8 +20,8 @@
 installfiles = {
   "**/*.lua",
   "**/*.sty",
-  "**/csl-locales-*.xml",
-  "**/*.csl",
+  -- "**/csl-locales-*.xml",
+  -- "**/*.csl",
 }
 scriptfiles = {"**/*.lua"}
 scriptmanfiles = {"citeproc-lua.1"}
]],
   },
}
test_dependencies = {
   "dkjson >= 2.1.0",
   "luafilesystem >= 1.5.0"
}
test = {
   type = "busted",
   flags = {
      "--lpath=''",
      "--run=citeproc"
   }
}

deploy = {
  wrap_bin_scripts = false
}
