package = "kaitai-struct"
version = "0.11-1"
source = {
   url = "https://github.com/kaitai-io/kaitai_struct_lua_runtime/archive/0.11.tar.gz",
}
description = {
   summary = "Kaitai Struct: runtime for Lua",
   detailed = [[This library implements Kaitai Struct API for Lua 5.3 - 5.5.

Kaitai Struct is a declarative language used for describe various binary data structures, laid out in files or in memory: i.e. binary file formats, network stream packet formats, etc.]],
   homepage = "https://github.com/kaitai-io/kaitai_struct_lua_runtime",
   license = "MIT"
}
dependencies = { 'luabitop', 'lua-struct', 'zzlib' }
build = {
   type = "builtin",
   patches = {
      ["kaitaistruct.diff"] = [[
--- old/kaitaistruct.lua
+++ new/kaitaistruct.lua
@@ -1,7 +1,13 @@
 local class = require("class")
 local stringstream = require("string_stream")
+string.unpack = string.unpack or function (char, ...)
+    char = char:gsub('i4', 'i'):gsub('i2', 'h'):gsub('i8', 'l'):gsub('I4', 'I'):gsub('I2', 'H'):gsub('I8', 'L')
+    return require("struct").unpack(char, ...)
+end
+local bit = require'bit'
 
-KaitaiStruct = class.class()
+local KaitaiStruct = class.class()
+local KaitaiStream = class.class()
 
 function KaitaiStruct:_init(io)
     self._io = io
@@ -23,8 +29,6 @@ function KaitaiStruct:from_string(s)
     return self(KaitaiStream(ss))
 end
 
-KaitaiStream = class.class()
-
 function KaitaiStream:_init(io)
     self._io = io
     self:align_to_byte()
@@ -199,18 +203,18 @@ function KaitaiStream:read_bits_int_be(n)
         local bytes_needed = math.ceil(bits_needed / 8)
         local buf = {self:read_bytes(bytes_needed):byte(1, bytes_needed)}
         for i = 1, bytes_needed do
-            res = res << 8 | buf[i]
+            res = bit.bor(bit.lshift(res, 8), buf[i])
         end
 
         local new_bits = res
-        res = res >> self.bits_left | self.bits << bits_needed
+        res = bit.bor(bit.rshift(res, self.bits_left), bit.lshift(self.bits, bits_needed))
         self.bits = new_bits -- will be masked at the end of the function
     else
-        res = self.bits >> -bits_needed -- shift unneeded bits out
+        res = bit.rshift(self.bits, -bits_needed) -- shift unneeded bits out
     end
 
-    local mask = (1 << self.bits_left) - 1 -- `bits_left` is in range 0..7
-    self.bits = self.bits & mask
+    local mask = bit.lshift(1, self.bits_left) - 1 -- `bits_left` is in range 0..7
+    self.bits = bit.band(self.bits, mask)
 
     return res
 end
@@ -235,21 +239,21 @@ function KaitaiStream:read_bits_int_le(n)
         local bytes_needed = math.ceil(bits_needed / 8)
         local buf = {self:read_bytes(bytes_needed):byte(1, bytes_needed)}
         for i = 1, bytes_needed do
-            res = res | buf[i] << ((i - 1) * 8) -- NB: Lua uses 1-based indexing, but we need 0-based here
+            res = bit.bor(res, bit.lshift(buf[i], ((i - 1) * 8))) -- NB: Lua uses 1-based indexing, but we need 0-based here
         end
 
-        local new_bits = res >> bits_needed
-        res = res << self.bits_left | self.bits
+        local new_bits = bit.rshift(res, bits_needed)
+        res = bit.bor(bit.lshift(res, self.bits_left), self.bits)
         self.bits = new_bits
     else
         res = self.bits
-        self.bits = self.bits >> n
+        self.bits = bit.rshift(self.bits, n)
     end
 
     self.bits_left = -bits_needed % 8
 
-    local mask = (1 << n) - 1 -- unlike some other languages, no problem with this in Lua
-    res = res & mask
+    local mask = bit.lshift(1, n) - 1 -- unlike some other languages, no problem with this in Lua
+    res = bit.band(res, mask)
     return res
 end
 
@@ -403,7 +407,7 @@ function KaitaiStream.process_xor_one(data, key)
     local r = ""
 
     for i = 1, #data do
-        local c = data:byte(i) ~ key
+        local c = bit.bxor(data:byte(i), key)
         r = r .. string.char(c)
     end
 
@@ -416,7 +420,7 @@ function KaitaiStream.process_xor_many(data, key)
     local ki = 1
 
     for i = 1, #data do
-        local c = data:byte(i) ~ key:byte(ki)
+        local c = bit.bxor(data:byte(i), key:byte(ki))
         r = r .. string.char(c)
         ki = ki + 1
         if ki > kl then
@@ -434,11 +438,11 @@ function KaitaiStream.process_rotate_left(data, amount, group_size)
 
     local result = ""
     local mask = group_size * 8 - 1
-    local anti_amount = -amount & mask
+    local anti_amount = bit.band(-amount, mask)
 
     for i = 1, #data  do
         local c = data:byte(i)
-        c = ((c << amount) & 0xFF) | (c >> anti_amount)
+        c = bit.bor(bit.band(bit.lshift(c, amount), 0xFF), bit.rshift(c, anti_amount))
         result = result .. string.char(c)
     end
 
@@ -449,47 +453,8 @@ end
 -- zlib byte array processing
 --=============================================================================
 
-local zzlib, zzlib_load_err = (function()
-    local old_pkg_path = package.path
-    local old_pkg_loaded_keys = {}
-
-    local load_err = nil
-
-    -- check that the debug library is available, otherwise we can't resolve the script path
-    if debug ~= nil then
-        for key, _ in pairs(package.loaded) do
-            old_pkg_loaded_keys[key] = true
-        end
-
-        if package.path:sub(1, 1) ~= ";" then
-            package.path = ";" .. package.path
-        end
-        -- Get current script path - combined various suggestions from
-        -- https://stackoverflow.com/a/35072122
-        package.path = (debug.getinfo(2, "S").source:match("^@(.*[/\\])") or "") .. "zzlib/?.lua" .. package.path
-    end
-
-    local success, zzlib = pcall(function() return require("zzlib") end)
-    if not success then
-        load_err = zzlib
-        zzlib = nil
-    end
-
-    if debug ~= nil then
-        package.path = old_pkg_path
-        for key, _ in pairs(package.loaded) do
-            if not old_pkg_loaded_keys[key] then
-                package.loaded[key] = nil
-            end
-        end
-    end
-
-    return zzlib, load_err
-end)()
-
 function KaitaiStream.process_zlib(data)
-    if zzlib == nil then
-        error("can't decompress zlib - failed to load submodule 'zzlib': " .. zzlib_load_err)
-    end
-    return zzlib.inflate(data)
+    return require'zzlib'.inflate(data)
 end
+
+return {KaitaiStruct, KaitaiStream}
]],
      ["string_decode.diff"] = [[
--- old/string_decode.lua
+++ new/string_decode.lua
@@ -3,31 +3,7 @@
 --
 
 local stringdecode = {}
-
--- From http://lua-users.org/wiki/LuaUnicode
-local function utf8_to_32(utf8str)
-    assert(type(utf8str) == "string")
-    local res, seq, val = {}, 0, nil
-
-    for i = 1, #utf8str do
-        local c = string.byte(utf8str, i)
-        if seq == 0 then
-            table.insert(res, val)
-            seq = c < 0x80 and 1 or c < 0xE0 and 2 or c < 0xF0 and 3 or
-                  c < 0xF8 and 4 or --c < 0xFC and 5 or c < 0xFE and 6 or
-                error("Invalid UTF-8 character sequence")
-            val = c & (2^(8-seq) - 1)
-        else
-            val = (val << 6) | (c & 0x3F)
-        end
-
-        seq = seq - 1
-    end
-
-    table.insert(res, val)
-
-    return res
-end
+local utf8 = utf8 or require'utf8'
 
 function stringdecode.decode(str, encoding)
     local enc = encoding and encoding:lower() or "ascii"
@@ -35,9 +11,10 @@ function stringdecode.decode(str, encoding)
     if enc == "ascii" then
         return str
     elseif enc == "utf-8" then
-        local code_points = utf8_to_32(str)
-
-        return utf8.char(table.unpack(code_points))
+        if utf8.isvalid(str) then
+            error("Invalid UTF-8 character sequence")
+        end
+        return str
     else
         error("Encoding " .. encoding .. " not supported")
     end
]]
   },
   modules = {
      ["kaitaistruct"] = "kaitaistruct.lua",
      ["class"] = "class.lua",
      ["enum"] = "enum.lua",
      ["string_decode"] = "string_decode.lua",
      ["string_stream"] = "string_stream.lua",
      ["utils"] = "utils.lua",
   }
}
