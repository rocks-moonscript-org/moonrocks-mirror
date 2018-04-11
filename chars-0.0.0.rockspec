package = "chars"
version = "0.0.0"
source = {
    url = "git://github.com/monzita/chars.git",
    tag = "v0.0.0-0"
}
description = {
    summary = "Some useful string methods.",
    detailed = "Useful string methods.",
    homepage = "git://github.com/monzita/chars.git",
    license = "MIT",
    maintainer = "Monika Ilieva",
    labels = {"string", "chars"}
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules={
        chars='src/chars.lua'
    }
}