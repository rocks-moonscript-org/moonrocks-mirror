package = "conceptxlib"
version = "1.0-1"
source = {
    url = "https://github.com/ThomasNoSimp/conceptxlib/blob/master/src/lib/conceptxlib.lua"
}
description = {
    summary = "Student Data Management Library for Lua",
    detailed = "Provides functions to manage and retrieve student records.",
    license = "MIT"
}
dependencies = {
    
}
build = {
    type = "builtin",
    modules = {
        ["conceptxlib"] = "src.lib.conceptxlib.lua"
    }
}
