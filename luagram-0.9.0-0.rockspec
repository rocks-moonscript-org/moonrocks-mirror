package = "Luagram"
version = "0.9.0-0"

source = {
 url = "git://github.com/HereAdvertise/Luagram.git",
 branch = "main"
}

description = {
 summary = "WIP",
 detailed = [[
WIP
]],
 homepage = "https://github.com/HereAdvertise/Luagram",
 license = "MIT"
}

build = {
 type = "builtin",
 modules = {
  ["Luagram"] = "Luagram.lua",
 }
}