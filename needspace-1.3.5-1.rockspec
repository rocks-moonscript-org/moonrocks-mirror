local git_ref = 'needspace-v1.3e'
local _git_ref = git_ref:gsub('.*%-v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/LaTeX-Package-Repositories/herries-press'

rockspec_format = '3.0'
package = 'needspace'
version = modrev .. '-' .. specrev

description = {
  summary = 'Insert pagebreak if not enough space',
  detailed =
  [[Provides commands to disable pagebreaking within a given vertical space. If there is not enough space between the command and the bottom of the page, a new page will be started.]],
  labels = { 'Layout' },
  homepage = repo_url,
  license = 'LPPL-1.0'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'herries-press-' .. git_ref .. '/' .. package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/needspace.zip',
    dir = '.'
  }
end

build_dependencies = { 'lualatex', 'filecontents' }

build = {
  type = 'l3build',
  patches = {
    ["stop.diff"] = [[
--- old/needspace.dtx
+++ new/needspace.dtx
@@ -72,6 +72,7 @@
 }
 
 \end{filecontents*}
+\stop
 %%%%%%%%%1%%%%%%%%%2%%%%%%%%%3%%%%%%%%%4%%%%%%%%%5
 
 
]],
    ["unpack.diff"] = [[
--- old/build.lua
+++ new/build.lua
@@ -4,6 +4,7 @@
 textfiles  ={"README.md", "changes.txt"}
 
 packtdszip  = false
+unpackexe = 'lualatex'
 
 maxprintline=10000
 checkruns = 2
]],
  },
}
