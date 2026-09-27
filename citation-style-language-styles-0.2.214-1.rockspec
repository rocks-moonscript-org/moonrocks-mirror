local git_ref = 'v0.2.214'
local modrev = git_ref:gsub('^v', '')
local specrev = 1
local repo_url = "https://github.com/citation-style-language/styles"

rockspec_format = "3.0"
package = "citation-style-language-styles"
version = modrev .. '-' .. specrev

source = {
   url = repo_url .. "/archive/" .. git_ref .. ".zip",
   dir = 'styles-' .. modrev
}

description = {
   summary =
   "Citation Style Language styles",
   detailed = [[
   The independent open source Citation Style Language (CSL) project aims to facilitate scholarly communication by automating the formatting of citations and bibliographies. The primary components of the CSL ecosystem are:

    The CSL schema and specification, which describe how the XML-based CSL styles and locale files should be written and interpreted
    Curated repositories of CSL styles and locale files
    Third party CSL processors, software libraries for rendering formatted citation and bibliographies from CSL styles, CSL locale files, and item metadata
]],
   labels = { 'bibliography', 'citations', 'hacktoberfest', 'csl', 'citation-style-language', 'citation-styles' },
   homepage = 'https://citationstyles.org/',
   license = "CC-BY-SA-3.0"
}
dependencies = {
}
build = {
   type = "command",
   build_command = "install -Dm644 *.csl -t conf",
   copy_directories = { 'conf' },
}
