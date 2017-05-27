package = "sano"
version = "0.0.2-1"

source = {
   url = "http://files.luaforge.net/releases/sano/sano"
}

description = {
   homepage = "http://sano.luaforge.net",
   license = "MIT",
   summary = "Sano is a library of Lua data structures and algorithms.",
   detailed = [[
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
   ]]
}

dependencies = {}

build = {
   type = "builtin",
   modules = {
     sano = "src/sano.lua"
   }
}
