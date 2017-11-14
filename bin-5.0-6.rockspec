package = "bin"
version = "5.0-6"
source = {
   url = "git://github.com/rayaman/bin.git",
   tag = "v5.0.6",
}
description = {
   summary = "Lua Binary ManIpulatioN library",
   detailed = [[
      This library contains many methods for working with files at the binary level. It can handle sterilization of all lua objects except userdata. It can even handle self recursion in talbes. It provides a bit, bits, infinabits, base64/91, lzw, md5 hashing, bignum, random, and a virtual file system(Soon, check out oldbin.lua for that) module.
	  The bit library is the same that comes with luajit. the bits/infinabits library deals with 1's and 0's used for numbers. bits is faster than infinabits, but is limited to 32/64 bits based on which version of lua you are working on. Base64/91 is provided, but since it is done in pure lua it is slower. Check out the github for more info.
   ]],
   homepage = "https://github.com/rayaman/bin",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      -- Note the required Lua syntax when listing submodules as keys
      ["bin.init"] = "bin/init.lua",
      ["bin.converters.base64"] = "bin/converters/base64.lua",
      ["bin.converters.base91"] = "bin/converters/base91.lua",
      ["bin.numbers.BigNum"] = "bin/numbers/BigNum.lua",
      ["bin.numbers.BigRat"] = "bin/numbers/BigRat.lua",
      ["bin.numbers.bits"] = "bin/numbers/bits.lua",
      ["bin.support.extrablocks"] = "bin/support/extrablocks.lua",
      ["bin.numbers.infinabits"] = "bin/numbers/infinabits.lua",
      ["bin.compressors.lzw"] = "bin/compressors/lzw.lua",
      ["bin.hashes.md5"] = "bin/hashes/md5.lua",
      ["bin.numbers.no_jit_bit"] = "bin/numbers/no_jit_bit.lua",
      ["bin.numbers.random"] = "bin/numbers/random.lua",
      ["bin.support.utils"] = "bin/support/utils.lua",
      ["bin.support.vfs"] = "bin/support/vfs.lua",
   }
}