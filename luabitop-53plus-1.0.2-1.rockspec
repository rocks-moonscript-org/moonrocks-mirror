package = 'LuaBitOp-53plus'
version = '1.0.2-1'

source = {
	url = 'git+https://github.com/LuaDist/luabitop.git',
	branch = '1.0.2',
}

description = {
	summary = 'Lua BitOp patched to support Lua 5.3+',
	homepage = 'http://bitop.luajit.org/',
	license = 'MIT/X license',
	detailed = [[
		Lua BitOp is a C extension module for Lua 5.1 which adds bitwise operations on numbers.
		This version is patched to be able to build against Lua 5.3+.
		Tested with Lua 5.3 and Lua 5.4.
		Patch source: https://github.com/LuaJIT/LuaJIT/issues/384
		Lua BitOp is Copyright © 2008 Mike Pall. Lua BitOp is free software, released under the MIT/X license (same license as the Lua core).
	]],
}

dependencies = {
	'lua >= 5.1',
}

build = {
	type = 'builtin',
	modules = {
		bit = {
			sources = {
				'bit.c',
			},
		},
	},
}

build.patches = {}
build.patches['luabitop-53plus'] = [[
a patch to add Lua 5.3+ support to LuaBitOp
source: https://github.com/LuaJIT/LuaJIT/issues/384

diff -u a/bit.c b/bit.c
--- a/bit.c
+++ b/bit.c
@@ -46,7 +46,7 @@

 typedef union {
   lua_Number n;
-#ifdef LUA_NUMBER_DOUBLE
+#if defined(LUA_NUMBER_DOUBLE) || defined(LUA_FLOAT_DOUBLE)
   uint64_t b;
 #else
   UBits b;
@@ -63,24 +63,25 @@
 #else
   bn.n = luaL_checknumber(L, idx);
 #endif
-#if defined(LUA_NUMBER_DOUBLE)
+#if defined(LUA_NUMBER_DOUBLE) || defined(LUA_FLOAT_DOUBLE)
   bn.n += 6755399441055744.0;  /* 2^52+2^51 */
 #ifdef SWAPPED_DOUBLE
   b = (UBits)(bn.b >> 32);
 #else
   b = (UBits)bn.b;
 #endif
-#elif defined(LUA_NUMBER_INT) || defined(LUA_NUMBER_LONG) || \
-      defined(LUA_NUMBER_LONGLONG) || defined(LUA_NUMBER_LONG_LONG) || \
-      defined(LUA_NUMBER_LLONG)
+#elif defined(LUA_NUMBER_INT)       || defined(LUA_INT_INT) || \
+      defined(LUA_NUMBER_LONG)      || defined(LUA_INT_LONG) || \
+      defined(LUA_NUMBER_LONGLONG)  || defined(LUA_INT_LONGLONG) || \
+      defined(LUA_NUMBER_LONG_LONG) || defined(LUA_NUMBER_LLONG)
   if (sizeof(UBits) == sizeof(lua_Number))
     b = bn.b;
   else
     b = (UBits)(SBits)bn.n;
-#elif defined(LUA_NUMBER_FLOAT)
+#elif defined(LUA_NUMBER_FLOAT) || defined(LUA_FLOAT_FLOAT)
 #error "A 'float' lua_Number type is incompatible with this library"
 #else
-#error "Unknown number type, check LUA_NUMBER_* in luaconf.h"
+#error "Unknown number type, check LUA_NUMBER_*, LUA_FLOAT_*, LUA_INT_* in luaconf.h"
 #endif
 #if LUA_VERSION_NUM < 502
   if (b == 0 && !lua_isnumber(L, idx)) {
@@ -91,7 +92,11 @@
 }

 /* Return bit type. */
+#if LUA_VERSION_NUM < 503
 #define BRET(b)  lua_pushnumber(L, (lua_Number)(SBits)(b)); return 1;
+#else
+#define BRET(b)  lua_pushinteger(L, (lua_Integer)(SBits)(b)); return 1;
+#endif

 static int bit_tobit(lua_State *L) { BRET(barg(L, 1)) }
 static int bit_bnot(lua_State *L) { BRET(~barg(L, 1)) }
@@ -163,11 +168,15 @@
 LUALIB_API int luaopen_bit(lua_State *L)
 {
   UBits b;
+#if LUA_VERSION_NUM < 503
   lua_pushnumber(L, (lua_Number)1437217655L);
+#else
+  lua_pushinteger(L, (lua_Integer)1437217655L);
+#endif
   b = barg(L, -1);
   if (b != (UBits)1437217655L || BAD_SAR) {  /* Perform a simple self-test. */
     const char *msg = "compiled with incompatible luaconf.h";
-#ifdef LUA_NUMBER_DOUBLE
+#if defined(LUA_NUMBER_DOUBLE) || defined(LUA_FLOAT_DOUBLE)
 #ifdef _WIN32
     if (b == (UBits)1610612736L)
       msg = "use D3DCREATE_FPU_PRESERVE with DirectX";
]]
