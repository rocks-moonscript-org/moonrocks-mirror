package = "gonapps-url-encoder"
version = "1.0-1"

source = {
    url = "git://github.com/gonapps/gonapps-lua-url-encoder",
    tag = "v1.0-1"
}

description = {
    summary = "An url encoder.",
    detailed = [[]],
    homepage = "http://github.com/gonapps/gonapps-lua-url-encoder",
    license = "LGPLv3"
}

dependencies = {"lua >= 5.1"}

build = {
    type = "builtin",
    modules = {
        ["gonapps.url.encoder"] = "src/gonapps/url/encoder.lua"
    }
}
