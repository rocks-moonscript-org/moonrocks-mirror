package = "nanoid"
version = "0.1.0-0"
source = {
  url = "git+ssh://git@github.com/mrtnpwn/nanoid.git"
}
description = {
  summary = "Tiny, secure, URL-friendly, unique string ID generator",
  detailed = [[
    Tiny, secure, URL-friendly, unique string ID generator

    Visit the repository at GitHub for more information.
  ]],
  homepage = "https://github.com/mrtnpwn/nanoid",
  license = "MIT",
  maintainer = "Martín Aguilar <ik7swordking@gmail.com>"
}
dependencies = {
  "luaossl >= 20200709-0"
}
build = {
  type = "builtin",
  modules = {
    ["nanoid"] = "nanoid/init.lua",
    ["nanoid.nonsecure"] = "nanoid/nonsecure.lua",
    ["nanoid.secure"] = "nanoid/secure.lua",
    ["nanoid.url"] = "nanoid/url.lua",
    ["nanoid.version"] = "nanoid/version.lua"
  }
}
