package = "mimetypes"
version = "1.0.0-1"
source = {
    url = "https://bitbucket.org/leafstorm/lua-mimetypes/get/v1.0.0.tar.gz",
    dir = "lua-mimetypes"
}

description = {
    summary = "A simple library for looking up the MIME types of files.",
    detailed = [[
        This is a simple library for guessing a file's MIME type. It includes
        a (hopefully) comprehensive database of MIME types, but it allows you
        to create your own should you have specific requirements. It can
        guess types both by extension and by the complete filename.
    ]],
    homepage = "https://bitbucket.org/leafstorm/lua-mimetypes/",
    license = "MIT/X11"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        mimetypes = "mimetypes.lua"
    }
}
