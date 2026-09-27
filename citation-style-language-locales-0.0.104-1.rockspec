local git_ref = 'v0.0.104'
local modrev = git_ref:gsub('^v', '')
local specrev = 1
local repo_url = "https://github.com/citation-style-language/locales"

rockspec_format = "3.0"
package = "citation-style-language-locales"
version = modrev .. '-' .. specrev

source = {
   url = repo_url .. "/archive/" .. git_ref .. ".zip",
   dir = 'locales-' .. modrev
}

description = {
   summary =
   "localize citations and bibliographies generated with CSL styles, and consist of localized terms, date formats and grammar rules",
   detailed = [[
CSL styles are either bound to one particular locale (e.g. the \u201cBritish Psychological Society\u201d CSL style will always produce citations and bibliographies in British English), or they (automatically) localize, e.g. to a user-selected locale, or to the locale of the user\u2019s operating system.

All CSL styles, both those with and without a fixed locale, rely on locale files for default localization data, which consists of translated terms commonly used in citations and bibliographies, date formats, and grammar rules. Storing localization data in separate files has several benefits: translations are easier to maintain, styles are more compact (although styles can still include their own localization data to override the defaults), and styles can be (mostly) language-agnostic.
]],
   labels = { 'hacktoberfest', 'csl', 'citation-style-language' },
   homepage = 'https://citationstyles.org/',
   license = "CC-BY-SA-3.0"
}
dependencies = {
}
build = {
   type = "command",
   build_command = "install -Dm644 *.xml -t conf",
   copy_directories = { 'conf' },
}
