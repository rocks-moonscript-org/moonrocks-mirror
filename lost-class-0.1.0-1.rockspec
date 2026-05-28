package = "lost-class"
version = "0.1.0-1"

source = {
url = "git+https://github.com/Lost-Things-Studio/Class.git",
tag = "v0.1.0",
}

description = {
summary = "Small single-file object-oriented helper for Lua.",
detailed = [[
Class is a lightweight object-oriented helper for Lua projects.
It provides class creation, instance initialization, inheritance-style includes,
private instance state, accessors, cloning, operator helpers, and debug output.
]],
homepage = "https://github.com/Lost-Things-Studio/Class",
license = "MIT",
}

dependencies = {
"lua >= 5.1",
}

build = {
type = "builtin",
modules = {
class = "class.lua",
},
}
