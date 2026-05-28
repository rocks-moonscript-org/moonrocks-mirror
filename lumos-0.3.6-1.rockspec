rockspec_format = "3.0"
package = "lumos"
version = "0.3.6-1"

source = {
   url = "git+https://github.com/benoitpetit/lumos.git",
   tag = "v0.3.6"
}

description = {
   summary = "A modern Lua CLI framework with advanced features",
   detailed = [[
      Lumos is a comprehensive CLI framework for Lua that provides:
      - Easy command and flag definition with fluent API
      - Built-in validation and type checking (int, float, array, enum, path, url, email)
      - Typed error system with middleware chain
      - Cross-platform support (Windows, macOS, Linux)
      - Lazy loading for fast startup
      - Automatic help generation and documentation
      - Shell completion support (Bash, Zsh, Fish)
      - Man page generation and Markdown docs
      - Progress bars and interactive prompts
      - JSON configuration support
      - Color output with terminal and pipe detection
      - Project scaffolding with 'lumos new' command
   ]],
   homepage = "https://github.com/benoitpetit/lumos",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.6.3"
}

test_dependencies = {
   "busted >= 2.0",
   "luacov >= 0.14"
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
      ["lumos.plugin"] = "lumos/plugin.lua",
      ["lumos.error"] = "lumos/error.lua",
      ["lumos.error_codes"] = "lumos/error_codes.lua",
      ["lumos.middleware"] = "lumos/middleware.lua",
      ["lumos.platform"] = "lumos/platform.lua",
      ["lumos.terminal"] = "lumos/terminal.lua",
      ["lumos.profiler"] = "lumos/profiler.lua",
      ["lumos.config_cache"] = "lumos/config_cache.lua",
      ["lumos.runtime_manager"] = "lumos/runtime_manager.lua",
      ["lumos.version"] = "lumos/version.lua",
      ["lumos.fs"] = "lumos/fs.lua",
      ["lumos.http"] = "lumos/http.lua",
      ["lumos.parser"] = "lumos/parser.lua",
      ["lumos.validator"] = "lumos/validator.lua",
      ["lumos.executor"] = "lumos/executor.lua",
      ["lumos.help_renderer"] = "lumos/help_renderer.lua"
   },
   copy_directories = {
      "runtime"
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
         flags = { "--coverage" }
      }
   }
}
