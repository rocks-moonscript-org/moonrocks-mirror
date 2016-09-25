package = "gonapps-url-decoder"
version = "1.1-2"

source = {
    url = "git://github.com/gonapps/gonapps-lua-url-decoder",
    tag = "v1.1-2"
}

description = {
    summary = "An url decoder.",
    detailed = [[]],
    homepage = "http://github.com/gonapps/gonapps-lua-url-decoder",
    license = "LGPLv3"
}

dependencies = {"lua >= 5.1"}

build = {
    type = "builtin",
    modules = {
        ["gonapps.url.decoder"] = "src/gonapps/url/decoder.lua"
    }
}
