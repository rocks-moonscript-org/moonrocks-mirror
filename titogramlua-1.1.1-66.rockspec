rockspec_format = "1.1"
package = "titogramlua"
version = "1.1.1-66"

source = {
    url = "git://github.com/titoo00/titogramlua.git",
    dir = "titogramlua",
    branch = "master"
}

description = {
    summary = "A simple yet extensive Lua library for the Telegram bot API.",
    detailed = "A simple yet extensive Lua library for the Telegram bot API, with many tools and API-friendly functions.",
    license = "GPL-3",
    homepage = "https://github.com/titoo00/titogramlua",
    maintainer = "Yousef Hesham <titoo000@gmail.com>"
}

supported_platforms = {
    "linux",
    "macosx",
    "unix",
    "bsd"
}

dependencies = {
    "dkjson >= 2.5-2",
    "lpeg >= 1.0.1-1",
    "luasec >= 0.6-1",
    "luasocket >= 3.0rc1-2",
    "multipart-post >= 1.1-1",
    "luautf8 >= 0.1.1-1"
}

build = {
    type = "builtin",
    modules = {
        ["titogramlua.core"] = "src/core.lua",
        ["titogramlua.tools"] = "src/tools.lua"
    }
}
