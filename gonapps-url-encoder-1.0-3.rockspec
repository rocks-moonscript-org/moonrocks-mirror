package = "gonapps-url-encoder"
version = "1.0-3"

source = {
    url = "git://github.com/gonapps-org/gonapps-lua-url-encoder",
    tag = "v1.0-3"
}

description = {
    summary = "An url encoder.",
    detailed = [[]],
    homepage = "http://github.com/gonapps-org/gonapps-lua-url-encoder",
    license = "Mozilla Public License 2.0"
}

dependencies = {"lua >= 5.1"}

build = {
    type = "builtin",
    modules = {
        ["gonapps.url.encoder"] = "src/gonapps/url/encoder.lua"
    }
}
