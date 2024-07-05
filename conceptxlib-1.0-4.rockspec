package = "conceptxlib"
version = "1.0-4"
source = {
    url = "https://github.com/ThomasNoSimp/conceptxlib/archive/refs/heads/master.zip",
    dir = "conceptxlib-master"
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
        ["conceptxlib"] = "src/lib/conceptxlib.lua"
    }
}
