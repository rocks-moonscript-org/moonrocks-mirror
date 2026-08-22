rockspec_format = "3.0"

package = "luexif"
version = "0.3.5-1"

source = {
    url = "git+https://codeberg.org/herbchan/luexif.git",
    tag = "v0.3.5",
}

description = {
    summary = "Lightweight Lua wrapper around ExifTool for reading image metadata.",
    detailed = [[
A lightweight Lua wrapper around ExifTool providing a simple API
for reading image metadata, including RAW formats.
]],
    homepage = "https://codeberg.org/herbchan/luexif",
    license = "MIT",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",

    modules = {
        ["luexif"] = "src/luexif/init.lua",
        ["luexif.process"] = "src/luexif/process.lua",
        ["luexif.normalize"] = "src/luexif/normalize.lua",
        ["luexif.libs.json"] = "src/luexif/libs/json.lua",
    },
}
