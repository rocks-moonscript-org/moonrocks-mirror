package = "properset"
version = '0.3b-0'
source = {
   url = "git://github.com/odkr/properset.lua",
   tag = 'v0.3b-0'
}
description = {
   summary = [[Allows to properly handle sets that contain
   objects, tables, or other sets, sports a rich and sane interface, and is
   well-documented.]],
   detailed = [[
   Comparison of Set Packages in Lua
   ---------------------------------

   I have found the following approaches to handling sets in Lua:

   * Roberto Ierusalimschy's example in
     [*Learning Lua*](https://www.lua.org/pil/11.5.html)
   * Wouter Scherphof's
     [set](https://luarocks.org/modules/luarocks/set)
   * Ivan Baidakou's
     [OrderedSet](https://luarocks.org/modules/basiliscos/orderedset)
   * Suggestions on the Lua User's
     [Wiki](http://lua-users.org/wiki/SetOperations)

   Ierusalimschy proposes to emulate sets using tables:

       function Set (list)
           local set = {}
           for _, l in ipairs(list) do set[l] = true end
           return set
       end

       reserved = Set{"while", "end", "function", "local"}

   This approach is simple and fast, however it gets into trouble if we want
   set of complexes, say, tables or objects:

       > function Set (list)
       >    local set = {}
       >    for _, l in ipairs(list) do set[l] = true end
       >    return set
       > end
       >
       > a = {1}
       > b = {1}
       > set = Set{a, b}
       > for k in pairs(set) do print (k) end
       table: 0x7ffd87d04680
       table: 0x7ffd87f0.200

   `a` and `b` are, for all intents and purposes, equal, so they should not
   *both* be members of the same set. However, because they are tables, all
   that matters when they are used as keys in other tables is their identity;
   and one and the same they are *not*.

   Note: Defining what it means for `a` and `b` to be equal makes no difference:

       > equality = {__eq = function () return true end}
       > a = setmetatable(a, equality)
       > b = setmetatable(b, equality)
       > a == b
       true
       > set = Set{a, b}
       > for k in pairs(set) do print (k) end
       table: 0x7ffd87d04680
       table: 0x7ffd87f0.200

   When a table is used as a key in another table, no comparison takes place.
   So defining what it means to be equal is pointless.

   This is the main problem `properset` solves.

   Scherphof, Baidakou and the Wiki adapt and expand upon Ierusalimschy's
   approach. Consequently, `set` and `OrderedSet` share this problem.

   Unfortunately, solving this problem means that elements have to be compared
   one by one, so `properset` is slower than those approaches.

   Furthermore, `set` and `OrderSet` both sport spartan, undocumented interfaces.
   Scherphof even follows Ierusalimschy in overloading the `/` and `*` operators
   for set operations, but neither of those symbols are associated with the
   operations he assigns to them in set theory; hence, the interface is
   counter-intuitive and the resulting code hard to read.

   `properset` aims to have a rich, but sane interface.

   See <https://github.com/odkr/properset.lua> for details.
]],
   license = "MIT",
   homepage = 'https://github.com/odkr/properset.lua'
}
dependencies = {
   "lua >= 5.3, <6"
}
build = {
    type = "builtin",
    modules = {
        properset = "properset.lua/src/properset.lua"
    },
    copy_directories = { "properset.lua/docs", "properset.lua/test" }
}
