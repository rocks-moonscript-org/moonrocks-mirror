rockspec_format = "3.0"
package = "mdzip-core-lua"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/mdzip-project/mdzip-core-lua.git",
  tag = "v0.1.0",
}
description = {
  summary = "Read, write and validate MDZip (.mdz) files: Markdown documents and their images in one ZIP archive.",
  detailed = [[
    A pure-Lua implementation of the MDZip specification 1.2: open .mdz archives,
    find the entry point, read documents and assets, resolve links, validate,
    create archives and modify them without losing what the library doesn't
    change. Tested against the specification's shared conformance fixtures.
    No C modules and no dependencies; Lua 5.3 or 5.4.
  ]],
  homepage = "https://github.com/mdzip-project/mdzip-core-lua",
  license = "Apache-2.0",
  labels = { "mdzip", "markdown", "zip", "archive" },
}
dependencies = {
  "lua >= 5.3, < 5.5",
}
build = {
  type = "builtin",
  modules = {
    ["mdzip"] = "src/mdzip/init.lua",
    ["mdzip.archive"] = "src/mdzip/archive.lua",
    ["mdzip.crc32"] = "src/mdzip/crc32.lua",
    ["mdzip.deflate"] = "src/mdzip/deflate.lua",
    ["mdzip.entrypoint"] = "src/mdzip/entrypoint.lua",
    ["mdzip.errors"] = "src/mdzip/errors.lua",
    ["mdzip.inflate"] = "src/mdzip/inflate.lua",
    ["mdzip.json"] = "src/mdzip/json.lua",
    ["mdzip.links"] = "src/mdzip/links.lua",
    ["mdzip.manifest"] = "src/mdzip/manifest.lua",
    ["mdzip.paths"] = "src/mdzip/paths.lua",
    ["mdzip.unicode"] = "src/mdzip/unicode.lua",
    ["mdzip.unicode_data"] = "src/mdzip/unicode_data.lua",
    ["mdzip.version"] = "src/mdzip/version.lua",
    ["mdzip.writer"] = "src/mdzip/writer.lua",
    ["mdzip.zip"] = "src/mdzip/zip.lua",
  },
}
test = {
  type = "command",
  command = "lua tests/run.lua",
}
