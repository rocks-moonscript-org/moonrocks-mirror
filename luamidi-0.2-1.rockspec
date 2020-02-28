package = "LuaMidi"
version = "0.2-1"
source = {
   url = "git+https://github.com/PedroAlvesV/LuaMidi.git"
}
description = {
   summary = "LuaMidi ♫ – A library to write MIDI programmatically in Lua.",
   detailed = [[
	LuaMidi is the pure Lua library to reading and writing MIDI files, with friendly API. As it provides MIDI data's total abstraction, it doesn't require the user to concern about technical stuff, such as delta time and NoteOn/NoteOff signals. Its methods are intuitive and its objects' data are completely human-readable.
   ]],
   homepage = "https://github.com/PedroAlvesV/LuaMidi",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      LuaMidi = "src/LuaMidi.lua",
      ["LuaMidi.Util"] = "src/LuaMidi/Util.lua",
      ["LuaMidi.Chunk"] = "src/LuaMidi/Chunk.lua",
      ["LuaMidi.Track"] = "src/LuaMidi/Track.lua",
      ["LuaMidi.Writer"] = "src/LuaMidi/Writer.lua",
      ["LuaMidi.Constants"] = "src/LuaMidi/Constants.lua",
      ["LuaMidi.MetaEvent"] = "src/LuaMidi/MetaEvent.lua",
      ["LuaMidi.NoteEvent"] = "src/LuaMidi/NoteEvent.lua",
      ["LuaMidi.NoteOnEvent"] = "src/LuaMidi/NoteOnEvent.lua",
      ["LuaMidi.NoteOffEvent"] = "src/LuaMidi/NoteOffEvent.lua",
      ["LuaMidi.OpenNoteOnEvent"] = "src/LuaMidi/OpenNoteOnEvent.lua",
      ["LuaMidi.OpenNoteOffEvent"] = "src/LuaMidi/OpenNoteOffEvent.lua",
      ["LuaMidi.ProgramChangeEvent"] = "src/LuaMidi/ProgramChangeEvent.lua",
   }
}
