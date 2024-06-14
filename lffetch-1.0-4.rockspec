package = "lffetch"
version = "1.0-4"
source = {
    url = "git+https://github.com/absolpega/lffetch",
    tag = version,
}
description = {
    homepage = "https://github.com/absolpega/lffetch",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1, <= 5.4",
}
build = {
    type = "none",
    install = {
        bin = { "lffetch.lua" },
    },
    copy_directories = { "logos" },
}
