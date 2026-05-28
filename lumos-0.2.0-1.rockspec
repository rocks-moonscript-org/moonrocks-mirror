rockspec_format = "3.0"
package = "lumos"
version = "0.2.0-1"

source = {
   url = "git+https://github.com/benoitpetit/lumos.git",
   tag = "v0.2.0"
}

description = {
   summary = "A modern Lua CLI framework with advanced features",
   detailed = [[
      Lumos is a comprehensive CLI framework for Lua that provides:
      - Easy command and flag definition
      - Built-in validation and type checking
      - Automatic help generation
      - Shell completion support
      - Man page generation
      - Markdown documentation
      - Progress bars and prompts
      - JSON configuration support
      - Color output support
   ]],
   homepage = "https://github.com/benoitpetit/lumos",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.6.3"
}

test_dependencies = {
   "busted >= 2.0"
}

build = {
   type = "builtin",
   modules = {
      ["lumos"] = "lumos/init.lua",
      ["lumos.app"] = "lumos/app.lua",
      ["lumos.core"] = "lumos/core.lua",
      ["lumos.flags"] = "lumos/flags.lua",
      ["lumos.color"] = "lumos/color.lua",
      ["lumos.config"] = "lumos/config.lua",
      ["lumos.json"] = "lumos/json.lua",
      ["lumos.loader"] = "lumos/loader.lua",
      ["lumos.progress"] = "lumos/progress.lua",
      ["lumos.prompt"] = "lumos/prompt.lua",
      ["lumos.table"] = "lumos/table.lua",
      ["lumos.security"] = "lumos/security.lua",
      ["lumos.logger"] = "lumos/logger.lua",
      ["lumos.completion"] = "lumos/completion.lua",
      ["lumos.manpage"] = "lumos/manpage.lua",
      ["lumos.markdown"] = "lumos/markdown.lua",
      ["lumos.format"] = "lumos/format.lua",
      ["lumos.bundle"] = "lumos/bundle.lua",
      ["lumos.native_build"] = "lumos/native_build.lua",
      ["lumos.package"] = "lumos/package.lua",
      ["lumos.plugin"] = "lumos/plugin.lua"
   },
   install = {
      bin = {
         ["lumos"] = "bin/lumos"
      }
   }
}

test = {
   type = "busted",
   platforms = {
      unix = {
         flags = { "--exclude-tags=slow" }
      }
   }
}
