package = "huntable"
version = "0.9-1"

source = {
 url = "git://github.com/olueiro/huntable.git",
 branch = "master"
}

description = {
 summary = "Comparator function for tables with dynamic values",
 detailed = [[
Comparator function for tables with dynamic values
]],
 homepage = "https://github.com/olueiro/huntable",
 license = "MIT"
}

dependencies = {}

build = {
 type = "builtin",
 modules = {
  ["huntable"] = "huntable.lua"
 },
 copy_directories = {}
}