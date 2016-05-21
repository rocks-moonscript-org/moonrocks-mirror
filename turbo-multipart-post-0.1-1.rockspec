package = "turbo-multipart-post"
version = "0.1-1"

source = {
 url = "git://github.com/olueiro/turbo-multipart-post.git",
 branch = "master"
}

description = {
 summary = "Turbo.lua multipart encoder",
 detailed = [[
Turbo.lua multipart encoder
]],
 homepage = "https://github.com/olueiro/turbo-multipart-post",
 license = "MIT"
}

dependencies = {
 "turbo"
}

build = {
 type = "builtin",
 modules = {
  ["turbo-multipart-post"] = "turbo-multipart-post.lua"
 },
 copy_directories = {}
}
