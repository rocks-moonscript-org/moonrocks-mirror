rockspec_format = "3.0"
package = "lumos"
version = "0.3.8-1"

source = {
   url = "git+https://github.com/benoitpetit/lumos.git",
   tag = "v0.3.8"
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
      ["lumos.app"] = "lumos/app.lua",
      ["lumos.app_utils"] = "lumos/app_utils.lua",
      ["lumos.bundle"] = "lumos/bundle.lua",
      ["lumos.color"] = "lumos/color.lua",
      ["lumos.command_builder"] = "lumos/command_builder.lua",
      ["lumos.completion"] = "lumos/completion.lua",
      ["lumos.config"] = "lumos/config.lua",
      ["lumos.config_cache"] = "lumos/config_cache.lua",
      ["lumos.core"] = "lumos/core.lua",
      ["lumos.env_loader"] = "lumos/env_loader.lua",
      ["lumos.error"] = "lumos/error.lua",
      ["lumos.error_codes"] = "lumos/error_codes.lua",
      ["lumos.executor"] = "lumos/executor.lua",
      ["lumos.flags"] = "lumos/flags.lua",
      ["lumos.format"] = "lumos/format.lua",
      ["lumos.fs"] = "lumos/fs.lua",
      ["lumos.help_renderer"] = "lumos/help_renderer.lua",
      ["lumos.http"] = "lumos/http.lua",
      ["lumos"] = "lumos/init.lua",
      ["lumos.json"] = "lumos/json.lua",
      ["lumos.loader"] = "lumos/loader.lua",
      ["lumos.logger"] = "lumos/logger.lua",
      ["lumos.manpage"] = "lumos/manpage.lua",
      ["lumos.markdown"] = "lumos/markdown.lua",
      ["lumos.middleware"] = "lumos/middleware.lua",
      ["lumos.native_build"] = "lumos/native_build.lua",
      ["lumos.native_build.modules"] = "lumos/native_build/modules.lua",
      ["lumos.native_build.toolchain"] = "lumos/native_build/toolchain.lua",
      ["lumos.package"] = "lumos/package.lua",
      ["lumos.parser"] = "lumos/parser.lua",
      ["lumos.platform"] = "lumos/platform.lua",
      ["lumos.plugin"] = "lumos/plugin.lua",
      ["lumos.profiler"] = "lumos/profiler.lua",
      ["lumos.progress"] = "lumos/progress.lua",
      ["lumos.prompt"] = "lumos/prompt.lua",
      ["lumos.runtime_manager"] = "lumos/runtime_manager.lua",
      ["lumos.security"] = "lumos/security.lua",
      ["lumos.stdin"] = "lumos/stdin.lua",
      ["lumos.table"] = "lumos/table.lua",
      ["lumos.terminal"] = "lumos/terminal.lua",
      ["lumos.toml"] = "lumos/toml.lua",
      ["lumos.validator"] = "lumos/validator.lua",
      ["lumos.version"] = "lumos/version.lua",
      ["lumos.yaml"] = "lumos/yaml.lua",
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
