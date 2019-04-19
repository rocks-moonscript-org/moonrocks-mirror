package = "lua-resty-fernet"
version = "1.0-0"
source = {
  url = "git+https://github.com/megalord/lua-resty-fernet"
}
description = {
  homepage = "https://github.com/megalord/lua-resty-fernet",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-string",
  "lua-erento-hmac",
}
build = {
  type = "builtin",
  modules = {
    ["resty.fernet"] = "lib/resty/fernet.lua"
  }
}
