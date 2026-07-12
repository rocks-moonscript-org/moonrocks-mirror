rockspec_format = "3.0"
package = "tecs-love2d-tl-type"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/tecs-dev/tecs-love2d-tl-type.git",
    tag = "v0.1.0",
}

description = {
    summary = "Teal type definitions for LÖVE 12",
    detailed = "Teal declarations for LÖVE 12. Installing this rock places love2d.d.tl on the LuaRocks module path so Teal projects can select it as their global environment definition.",
    homepage = "https://github.com/tecs-dev/tecs-love2d-tl-type",
    license = "MIT",
}

build = {
    type = "builtin",
    modules = {},
    install = {
        lua = {
            "love2d.d.tl",
        },
    },
}
