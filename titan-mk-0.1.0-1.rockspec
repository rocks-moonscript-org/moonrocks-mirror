rockspec_format = "3.0"
package = "titan-mk"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/mascarenhas/mk.git",
   tag = "v0.1.0",
}
description = {
   summary = "Titan web framework with PEG routing and worker threads",
   homepage = "https://github.com/mascarenhas/mk",
   license = "MIT",
}
dependencies = {
   "lua ~> 5.5",
   "titan ~> 0.6",
}

-- LuaRocks loads rockspecs with an empty _ENV, so the root list is built
-- from string literals only (table.concat is unavailable here).
local roots = "mk mk.log mk.router "
   .. "mk.middleware.env mk.middleware.healthcheck mk.middleware.helmet "
   .. "mk.middleware.keyauth mk.middleware.logger mk.middleware.recover "
   .. "mk.middleware.requestid mk.middleware.responsetime "
   .. "mk.middleware.static mk.middleware.timeout"

build = {
   type = "command",
   build_command = '"$(SCRIPTS_DIR)/titanc" --incremental --tree src --output build ' .. roots,
   install_command = 'mkdir -p "$(PREFIX)/dist/modules" && cp -p build/mk.so build/mk.a "$(PREFIX)/dist/modules/"',
   platforms = {
      windows = {
         build_command = '"$(SCRIPTS_DIR)\\titanc.exe" --incremental --tree src --output build ' .. roots,
         install_command = '(if not exist "$(PREFIX)\\dist\\modules" mkdir "$(PREFIX)\\dist\\modules") && copy /Y build\\mk.dll "$(PREFIX)\\dist\\modules\\mk.dll"',
      },
   },
   -- Installed into the rock directory so the guide, reference, and the
   -- titan-mk agent skill ship with the provider.
   copy_directories = {
      "doc",
      "skills",
   },
}

hooks = {
   post_install = '"$(SCRIPTS_DIR)/titan-install" --path "$(PREFIX)"',
   platforms = {
      windows = {
         post_install = '"$(SCRIPTS_DIR)\\titan-install.bat" --path "$(PREFIX)"',
      },
   },
}
