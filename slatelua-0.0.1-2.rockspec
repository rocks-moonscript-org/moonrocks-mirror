package = "slatelua"
version = "0.0.1-2"

source = {
    url = "git://github.com/slateblua/slatelua",
    tag = "v0.0.1"
}

description = {
    summary = "A small Lua utility collection for games.",
    detailed = "SlateLua is a lightweight set of pluggable Lua modules for Love2D game development. It is intentionally small: each addon can be required independently, and the top-level `slatelua` module only wires the pieces together for convenience.",
    homepage = "https://github.com/slateblua/slatelua",
    license = "MIT"
}

dependencies = {
    "lua >= 5.2"
}

build = {
    type = "builtin",
    modules = {
        ["slatelua"] = "slatelua/init.lua"
    }
}