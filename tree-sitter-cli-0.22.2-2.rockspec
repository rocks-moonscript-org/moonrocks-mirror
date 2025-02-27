rockspec_format = "3.0"

package = "tree-sitter-cli"
version = "0.22.2-2"

source = {
   url = "git+https://github.com/FourierTransformer/tree-sitter-cli"
}

description = {
   summary = "Install tree-sitter CLI binaries",
   detailed = "An option to install the tree-sitter CLI via LuaRocks",
   homepage = "https://github.com/FourierTransformer/tree-sitter-cli",
   issues_url = "https://github.com/FourierTransformer/tree-sitter-cli/issues",
   license = "MIT"
}

supported_platforms = {"linux", "macosx", "windows"}

build_dependencies = {
   "luarocks-build-tree-sitter-cli==0.0.2",
}

build = {
   type = "tree-sitter-cli",
   tree_sitter_version = "v0.22.2",
   platforms = {
      windows = {
         install = {
            bin = {
               ['tree-sitter.exe'] = 'tree-sitter.exe'
            }
         }
      },
      linux = {
         install = {
            bin = {
               ['tree-sitter'] = 'tree-sitter'
            }
         }
      },
      macosx = {
         install = {
            bin = {
               ['tree-sitter'] = 'tree-sitter'
            }
         }
      }
   }
}

