package = "rgbstr"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/rgbstr",
   tag = "v0.1.0"
}
description = {
   summary = "Derive pseudo-random colours for strings",
   detailed = [[
		This library takes strings and (using a VERY simple hashing function) returns a pseudo-random RGB colour.
		Similar strings (including anagrams) don't generally produce similar colours (although this can still happen by
		chance).
		Its main purpose is to automatically add colours to visually distinguish small pieces of text, like category tags,
		or other plain text or numeric identifiers like tags on a blog, pointers in some debug output, etc.
	]],
   homepage = "https://github.com/darkwiiplayer/rgbstr",
   license = "Unlicense"
}
build = {
   type = "builtin",
   modules = {
      rgbstr = "src/rgbstr.lua"
   }
}
