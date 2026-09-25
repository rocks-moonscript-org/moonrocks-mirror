local git_ref = 'v0.1e'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

rockspec_format = "3.0"
package = "lua-uca-temp"
local repo_url = "https://github.com/michal-h21/lua-uca"
version = modrev .. '-' .. specrev
source = {
  url = repo_url .. "/archive/" .. git_ref .. ".zip",
  dir = 'lua-uca-' .. _git_ref .. '/src/lua-uca'
}

dependencies = {
   "lua >= 5.1"
}
description = {
   summary = "Implementation of the Unicode Collation Algorithm for Lua",
   detailed = [[
      This package adds support for the Unicode collation algorithm for Lua 5.3. It is mainly intended for use with LuaTeX and working TeX distribution, but it can work also as a standalone Lua module. You will need to install a required Lua-uni-algos package by hand in that case.]],
  labels = { 'Typesetting', 'LuaTeX' },
   homepage = repo_url,
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["lua-uca-chinese"] = "lua-uca-chinese.lua",
      ["lua-uca-collator"] = "lua-uca-collator.lua",
      ["lua-uca-ducet-jit"] = "lua-uca-ducet-jit.lua",
      ["lua-uca-ducet"] = "lua-uca-ducet.lua",
      ["lua-uca-languages"] = "lua-uca-languages.lua",
      ["lua-uca.lua-uca-reordering-table"] = "lua-uca-reordering-table.lua",
      ["lua-uca.lua-uca-tailoring"] = "lua-uca-tailoring.lua"
   }
}
