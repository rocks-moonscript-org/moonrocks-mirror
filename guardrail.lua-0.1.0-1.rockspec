rockspec_format = "3.0"
package = "guardrail.lua"
version = "0.1.0-1"
source = { url = "git://github.com/magnexis/guardrail.lua", tag = "v0.1.0" }
description = {
  summary = "Runtime contracts and structured validation for Lua.",
  detailed = "A dependency-free runtime validation library for Lua 5.1 through 5.4 and LuaJIT.",
  homepage = "https://github.com/magnexis/guardrail.lua",
  license = "MIT"
}
dependencies = { "lua >= 5.1" }
build = { type = "builtin", modules = {
  ["guardrail"] = "guardrail/init.lua", ["guardrail.compatibility"] = "guardrail/compatibility.lua",
  ["guardrail.config"] = "guardrail/config.lua", ["guardrail.path"] = "guardrail/path.lua",
  ["guardrail.errors"] = "guardrail/errors.lua", ["guardrail.schema"] = "guardrail/schema.lua",
  ["guardrail.validators"] = "guardrail/validators/init.lua", ["guardrail.validators.primitive"] = "guardrail/validators/primitive.lua",
  ["guardrail.validators.string"] = "guardrail/validators/string.lua", ["guardrail.validators.number"] = "guardrail/validators/number.lua",
  ["guardrail.validators.table"] = "guardrail/validators/table.lua", ["guardrail.validators.array"] = "guardrail/validators/array.lua",
  ["guardrail.validators.tuple"] = "guardrail/validators/tuple.lua", ["guardrail.validators.map"] = "guardrail/validators/map.lua",
  ["guardrail.validators.union"] = "guardrail/validators/union.lua", ["guardrail.validators.literal"] = "guardrail/validators/literal.lua",
  ["guardrail.validators.enum"] = "guardrail/validators/enum.lua", ["guardrail.validators.custom"] = "guardrail/validators/custom.lua",
  ["guardrail.validators.lazy"] = "guardrail/validators/lazy.lua", ["guardrail.contract"] = "guardrail/contract.lua",
  ["guardrail.invariant"] = "guardrail/invariant.lua", ["guardrail.formatter"] = "guardrail/formatter.lua",
  ["guardrail.annotations"] = "guardrail/annotations.lua"
} }
test = { type = "command", command = "lua spec/run.lua" }
