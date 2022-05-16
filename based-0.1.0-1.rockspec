package = "based"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/based",
   tag = "v0.1.0"
}
description = {
   summary = "Collection of string encoders and decoders",
   detailed = [[
		This module provides encoders and decoders for several string
		encoding formats like Hexadecimal and Base32.
	]],
   homepage = "https://github.com/darkwiiplayer/based",
   license = "Unlicense"
}
dependencies = {
   "lua ~>5, >=5.1"
}
build = {
   type = "builtin",
   modules = {
      ["based.16.hex"] = "based/16/hex.lua",
      ["based.32.crockford"] = "based/32/crockford.lua",
      ["based.32.generic"] = "based/32/generic.lua",
      ["based.64.generic"] = "based/64/generic.lua",
      ["based.64.rfc"] = "based/64/rfc.lua"
   }
}
