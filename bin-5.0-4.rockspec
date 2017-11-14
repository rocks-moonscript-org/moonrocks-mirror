package = "bin"
version = "5.0-4"
source = {
   url = "git://github.com/rayaman/bin.git",
   tag = "v5.0.4",
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
      ["bin.base64"] = "bin/base64.lua",
      ["bin.base91"] = "bin/base91.lua",
      ["bin.BigNum"] = "bin/BigNum.lua",
      ["bin.BigRat"] = "bin/BigRat.lua",
      ["bin.bits"] = "bin/bits.lua",
      ["bin.extrablocks"] = "bin/extrablocks.lua",
      ["bin.infinabits"] = "bin/infinabits.lua",
      ["bin.lzw"] = "bin/lzw.lua",
      ["bin.md5"] = "bin/md5.lua",
      ["bin.no_jit_bit"] = "bin/no_jit_bit.lua",
      ["bin.random"] = "bin/random.lua",
      ["bin.utils"] = "bin/utils.lua",
      ["bin.vfs"] = "bin/vfs.lua",
   }
}