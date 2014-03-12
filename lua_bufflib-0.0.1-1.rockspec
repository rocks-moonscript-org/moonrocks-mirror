rockspec_format = "1.0"
package = "lua_bufflib"
version = "0.0.1-1"

description = {
	summary = "A library for string buffers in Lua",
	detailed = [[
A library for string buffers in Lua.

The buffer code in this library is largely adapted from Lua 5.2's luaL_Buffer code.
The main difference is that Buffers store their contents in the registry instead of the stack when their length exceeds LUAL_BUFFERSIZE.
This prevents the C char array holding the current contents from being garbage collected until a larger array is required or the Buffer is reset or garbage collected.
You don't need to know any of this to use the library, it's just extra information for people curious about the implementation.

Just like regular strings in Lua, string buffers can contain embedded nulls (\0).

Similar to Lua's string library, most Buffer methods can be called as `buff:method(...)` or `bufflib.method(buff, ...)` (where `buff` is a Buffer).
Note that not all methods use the same name in the Buffer metatable and the `bufflib` table.
The primary examples of this are the metamethods, which use the required metamethod names in the metatable and more descriptive names in the `bufflib` table (e.g. the `__len` metamethod is the same as `bufflib.length`).

Buffers define metamethods for length (#), concatenation (..) and tostring(). See the documentation of each metamethod for details.
]],
	license = "MIT/X11",
	homepage = "https://github.com/Choonster/lua_bufflib",
}

dependencies = {
	"lua >= 5.1, < 5.3"
}

source = {
	url = "https://github.com/Choonster/lua_bufflib/archive/0.0.1-1.tar.gz",
	dir = "lua_bufflib-0.0.1-1"
}

build = {
	type = "builtin",
	modules = {
		bufflib = "lua_bufflib.c"
	}
}


	