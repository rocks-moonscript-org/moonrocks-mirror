package = "sano"
version = "0.0.1-1"
source = {
   url = "http://files.luaforge.net/releases/sano/sano"
}
description = {
   homepage = "http://sano.luaforge.net",
   license = "MIT",
   detailed = [[
   sano - Sano is a library of Lua data structures and algorithms.

   Among the highlights are: Several sequence types, including the humble
   Tuple (a lightweight, hashable table wrapper), Vector (slightly more
   industrial strength table wrapper, including negative indexing),
   QueueVector (random access + efficient inserts at head OR tail),
   a basic LinkedList, and SkipVector (a skip-list based random access
   sequence with efficient inserts or removals at ANY position).

   The library also includes several map implementations: among them the
   basic HashMap (a table-based map with plenty of convenience methods
   and support for user-defined hashing functions), an ordered,
   mergeable, spliceable SkipMap, and a LinkedMap (iteration order same as
   insertion order). For each of these map types, Sano also has
   the parallel set type - HashSet, SkipSet, LinkedSet.

   In addition, the library contains a PairingHeap (constant-time
   mergeable heap), Multimap (implements one to many mappings), Multiset
   (ordered or unordered), and numerous algorithms and utility functions
   for working with all the data structures in the library.

   To get help on any object, function, or module,
   <b><code>sano.summary(obj)</code></b> prints a brief one sentance
   description of obj, and, if obj is an object or module, a brief one
   sentance description of each of the methods of the object or functions
   of the module. <b><code>sano.doc(obj)</code></b> prints full
   documentation for obj.
   ]]
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
     sano = "src/sano.lua"
   }
}
