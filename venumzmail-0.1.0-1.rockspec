package = "venumzmail"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/OfficialDex/venumzmail-lua.git",
    tag = "v0.1.0",
}

description = {
    summary  = "Lua SDK for the venumzmail temp email API",
    homepage = "https://github.com/OfficialDex/venumzmail-lua",
    license  = "MIT",
}

dependencies = {
    "lua >= 5.1",
    "luasocket",
    "luasec",
    "lua-cjson",
}

build = {
    type    = "builtin",
    modules = {
        ["venumzmail"]            = "venumzmail/init.lua",
        ["venumzmail.client"]     = "venumzmail/client.lua",
        ["venumzmail.models"]     = "venumzmail/models.lua",
        ["venumzmail.errors"]     = "venumzmail/errors.lua",
        ["venumzmail.welcome"]    = "venumzmail/welcome.lua",
    },
}

