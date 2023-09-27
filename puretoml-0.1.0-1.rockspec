rockspec_format = "3.0"
package = "pureTOML"
version = "0.1.0-1"

description = {
    summary = "A pure Lua TOML parser and serializer written in Yuescript",
    detailed = [[
        A pure Lua TOML parser and serializer written in Yuescript.
        Only supports TOML 0.1.0, but support for later versions is being worked on.
        It can only decode files, no encoding nor decoding strings. This is also being worked on.
    ]],

    license = "MIT",
    homepage = "https://gitlab.com/licktheroom/puretoml",
    issues_url = "https://gitlab.com/licktheroom/puretoml/-/issues",
    maintainer = "licktheroom <licktheroom@proton.me>",
    labels = {"serialization","toml","parser","serializer"}
}

dependencies = {
    "lua >= 5.1",
    "yuescript >= 0.19"
}

source = {
    url = "https://gitlab.com/licktheroom/puretoml/-/archive/main/puretoml-main.tar.gz"
}

build = {
    type = "command",
    build_command = "yue toml.yue",
    install = {
        lua = {
            puretoml = "puretoml.lua",
            ["puretoml.yue"] = "puretoml.yue"
        }
    }
}