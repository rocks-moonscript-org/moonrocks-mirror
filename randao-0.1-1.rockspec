-- RandAO-0.1-1.rockspec
package = "RandAO"
version = "0.1-1"
source = {
    url = "https://github.com/yourusername/RandAO/archive/refs/tags/v0.1.zip"
}
description = {
    summary = "A library for requesting randomness and checking its status",
    detailed = "RandAO is a Teal library that allows users to request randomness from providers and check the status of those requests.",
    homepage = "https://github.com/yourusername/RandAO",
    license = "MIT"
}
dependencies = {
    "teal >= 0.10.0"
}
build = {
    type = "builtin",
    modules = {
        ["RandAO"] = "src/RandAO.tl"
    }
}
