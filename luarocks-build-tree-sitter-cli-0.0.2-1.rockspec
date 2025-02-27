rockspec_format = "3.0"

package = "luarocks-build-tree-sitter-cli"
version = "0.0.2-1"

description = {
    summary = "A LuaRocks build backend to install the tree-sitter CLI",
    detailed = "luarocks-build-tree-sitter-cli is a LuaRocks build.type that allows installing tree-sitter CLI binaries via LuaRocks directly. It works similarly to the npm install option for tree-sitter, but uses LuaRocks instead.",
    homepage = "https://github.com/FourierTransformer/luarocks-build-tree-sitter-cli",
    issues_url = "https://github.com/FourierTransformer/luarocks-build-tree-sitter-cli/issues",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

source = {
    url = "git+https://github.com/FourierTransformer/luarocks-build-tree-sitter-cli",
    tag = "0.0.2"
}
