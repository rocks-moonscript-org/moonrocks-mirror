package = "LuaHelp"
version = "0.3-1"

source = {
  url = "http://luahelp.googlecode.com/files/luahelp-0.3-1.tar.gz",
  md5 = "de929bb30c821ae99db52e81e700a4cb",
  dir = "luahelp-0.3"
}

description = {
  summary  = "Help pages for Lua",
  detailed = [[
    LuaHelp provides a simple interface to manual pages, called Lua Help Pages
    (LHP). From the interpreter, just call "help()" for a more detailed
    description.
  ]],
  homepage = "http://code.google.com/p/luahelp",
  license = "Public domain"
}

dependencies = {
  "lua >= 5.1"
}

local basefiles = {
  "lhp/assert.lhp",
  "lhp/collectgarbage.lhp",
  "lhp/coroutine.lhp",
  "lhp/debug.lhp",
  "lhp/dofile.lhp",
  "lhp/error.lhp",
  "lhp/for.lhp",
  "lhp/getfenv.lhp",
  "lhp/getmetatable.lhp",
  "lhp/_G.lhp",
  "lhp/help.lhp",
  "lhp/info.lhp",
  "lhp/io.lhp",
  "lhp/ipairs.lhp",
  "lhp/length.lhp",
  "lhp/lexis.lhp",
  "lhp/license.lhp",
  "lhp/loadfile.lhp",
  "lhp/load.lhp",
  "lhp/loadstring.lhp",
  "lhp/lua.lhp",
  "lhp/luasa.lhp",
  "lhp/luaref.lhp",
  "lhp/math.lhp",
  "lhp/module.lhp",
  "lhp/next.lhp",
  "lhp/os.lhp",
  "lhp/package.lhp",
  "lhp/pairs.lhp",
  "lhp/patterns.lhp",
  "lhp/pcall.lhp",
  "lhp/print.lhp",
  "lhp/rawequal.lhp",
  "lhp/rawget.lhp",
  "lhp/rawset.lhp",
  "lhp/require.lhp",
  "lhp/select.lhp",
  "lhp/setfenv.lhp",
  "lhp/setmetatable.lhp",
  "lhp/string.lhp",
  "lhp/table.lhp",
  "lhp/tonumber.lhp",
  "lhp/tostring.lhp",
  "lhp/type.lhp",
  "lhp/types.lhp",
  "lhp/unpack.lhp",
  "lhp/xpcall.lhp"
}

local libfiles = {
  -- coroutine
  "lhp/coroutine/create.lhp",
  "lhp/coroutine/resume.lhp",
  "lhp/coroutine/running.lhp",
  "lhp/coroutine/status.lhp",
  "lhp/coroutine/wrap.lhp",
  "lhp/coroutine/yield.lhp",
  -- debug
  "lhp/debug/debug.lhp",
  "lhp/debug/getfenv.lhp",
  "lhp/debug/gethook.lhp",
  "lhp/debug/getinfo.lhp",
  "lhp/debug/getlocal.lhp",
  "lhp/debug/getmetatable.lhp",
  "lhp/debug/getregistry.lhp",
  "lhp/debug/getupvalue.lhp",
  "lhp/debug/setfenv.lhp",
  "lhp/debug/sethook.lhp",
  "lhp/debug/setlocal.lhp",
  "lhp/debug/setmetatable.lhp",
  "lhp/debug/setupvalue.lhp",
  "lhp/debug/traceback.lhp",
  -- help
  "lhp/help/print.lhp",
  "lhp/help/register.lhp",
  -- io
  "lhp/file/close.lhp",
  "lhp/file/flush.lhp",
  "lhp/file/lines.lhp",
  "lhp/file/read.lhp",
  "lhp/file/seek.lhp",
  "lhp/file/setvbuf.lhp",
  "lhp/file/write.lhp",
  "lhp/io/close.lhp",
  "lhp/io/flush.lhp",
  "lhp/io/input.lhp",
  "lhp/io/lines.lhp",
  "lhp/io/open.lhp",
  "lhp/io/output.lhp",
  "lhp/io/popen.lhp",
  "lhp/io/read.lhp",
  "lhp/io/tmpfile.lhp",
  "lhp/io/type.lhp",
  "lhp/io/write.lhp",
  -- math
  "lhp/math/abs.lhp",
  "lhp/math/acos.lhp",
  "lhp/math/asin.lhp",
  "lhp/math/atan2.lhp",
  "lhp/math/atan.lhp",
  "lhp/math/ceil.lhp",
  "lhp/math/cosh.lhp",
  "lhp/math/cos.lhp",
  "lhp/math/deg.lhp",
  "lhp/math/exp.lhp",
  "lhp/math/floor.lhp",
  "lhp/math/fmod.lhp",
  "lhp/math/frexp.lhp",
  "lhp/math/huge.lhp",
  "lhp/math/ldexp.lhp",
  "lhp/math/log10.lhp",
  "lhp/math/log.lhp",
  "lhp/math/max.lhp",
  "lhp/math/min.lhp",
  "lhp/math/modf.lhp",
  "lhp/math/pi.lhp",
  "lhp/math/pow.lhp",
  "lhp/math/rad.lhp",
  "lhp/math/random.lhp",
  "lhp/math/randomseed.lhp",
  "lhp/math/sinh.lhp",
  "lhp/math/sin.lhp",
  "lhp/math/sqrt.lhp",
  "lhp/math/tanh.lhp",
  "lhp/math/tan.lhp",
  -- os
  "lhp/os/clock.lhp",
  "lhp/os/date.lhp",
  "lhp/os/difftime.lhp",
  "lhp/os/execute.lhp",
  "lhp/os/exit.lhp",
  "lhp/os/getenv.lhp",
  "lhp/os/remove.lhp",
  "lhp/os/rename.lhp",
  "lhp/os/setlocale.lhp",
  "lhp/os/time.lhp",
  "lhp/os/tmpname.lhp",
  -- package
  "lhp/package/cpath.lhp",
  "lhp/package/loaded.lhp",
  "lhp/package/loadlib.lhp",
  "lhp/package/path.lhp",
  "lhp/package/preload.lhp",
  "lhp/package/seeall.lhp",
  -- string
  "lhp/string/byte.lhp",
  "lhp/string/char.lhp",
  "lhp/string/dump.lhp",
  "lhp/string/find.lhp",
  "lhp/string/format.lhp",
  "lhp/string/gmatch.lhp",
  "lhp/string/gsub.lhp",
  "lhp/string/len.lhp",
  "lhp/string/lower.lhp",
  "lhp/string/match.lhp",
  "lhp/string/rep.lhp",
  "lhp/string/reverse.lhp",
  "lhp/string/sub.lhp",
  "lhp/string/upper.lhp",
  -- table
  "lhp/table/concat.lhp",
  "lhp/table/foreachi.lhp",
  "lhp/table/foreach.lhp",
  "lhp/table/insert.lhp",
  "lhp/table/maxn.lhp",
  "lhp/table/remove.lhp",
  "lhp/table/sort.lhp"
}

local lhp = {helpman = "helpman.lua"}
for i = 1, #basefiles do
  local f = basefiles[i]
  local t = {f:match("^(lhp)/([%w_]+)%.lhp$")}
  lhp[t[1] .. "." .. t[2]] = f
end
for i = 1, #libfiles do
  local f = libfiles[i]
  local t = {f:match("^(lhp)/(%w+)/([%w_]+)%.lhp$")}
  lhp[t[1] .. "." .. t[2] .. "." .. t[3]] = f
end

build = {
  type = "builtin",
  modules = {
    help = "help.c"
  },
  install = { lua = lhp }
}

