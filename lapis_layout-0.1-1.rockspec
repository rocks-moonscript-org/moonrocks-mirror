package = "lapis_layout"
version = "0.1-1"

source = {
 url = "git://github.com/olueiro/lapis_layout.git",
 branch = "master"
}

description = {
 summary = "Converts HTML files to Lapis webframework layouts",
 detailed = [[
Converts HTML files to Lapis webframework layouts
]],
 homepage = "https://github.com/olueiro/lapis_layout",
 license = "MIT"
}

dependencies = {
 "web_sanitize"
}

build = {
 type = "builtin",
 modules = {
  ["lapis_layout"] = "lapis_layout.lua"
 },
 copy_directories = {}
}