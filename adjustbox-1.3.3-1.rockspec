local git_ref = 'v1.3c'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'
local date = '2025-02-26'

local repo_url = 'https://github.com/MartinScharrer/adjustbox'

rockspec_format = '3.0'
package = 'adjustbox'
version = modrev .. '-' .. specrev

dependencies = { 'l3packages', 'luaotfload' }

description = {
  summary = 'Graphics package-alike macros for "general" boxes',
  detailed =
  [[The package provides several macros to adjust boxed content. One purpose is to supplement the standard graphics package, which defines the macros \resizebox, \scalebox and \rotatebox , with the macros\trimbox and \clipbox. The main feature is the general \adjustbox macro which extends the “key=value” interface of \includegraphics from the graphics package and applies it to general text content. Additional provided box macros are \lapbox, \marginbox, \minsizebox, \maxsizebox and \phantombox.

  All macros use the collectbox package to read the content as a box and not as a macro argument. This allows for all forms of content including special material like verbatim content. A special feature of collectbox is used to provide matching environments with the identical names as the macros.]],
  labels = { 'Box manipulation', 'Typesetting', 'Box breaking' },
  homepage = repo_url,
  license = 'LPPL-1.3'
}

dependencies = { 'pgf', 'latex-graphics', 'collectbox', 'xkeyval',
  'latex-tools' }

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '-' .. git_ref .. '-' .. date .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'none',
  copy_directories = { 'tex' },
}
