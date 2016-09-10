package = "turbo-telegram"
version = "0.9-1"

source = {
 url = "git://github.com/olueiro/turbo-telegram.git",
 branch = "master"
}

description = {
 summary = "Fully-featured Telegram Bot API for Turbo.lua",
 detailed = [[
Fully-featured Telegram Bot API for Turbo.lua
]],
 homepage = "https://github.com/olueiro/turbo-telegram",
 license = "MIT"
}

dependencies = {
 "turbo",
 "turbo-fetch",
 "turbo-multipart-post",
 "huntable"
}

build = {
 type = "builtin",
 modules = {
  ["turbo-telegram"] = "turbo-telegram.lua"
 },
 copy_directories = {}
}