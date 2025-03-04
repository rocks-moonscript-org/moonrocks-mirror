package = "centreon-stream-connectors-lib"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/centreon/centreon-stream-connector-scripts",
   tag = "0.1.0"
}
description = {
   summary = "Centreon stream connectors lua modules",
   detailed = [[
      Those modules provides helpful methods to create
      stream connectors for Centreon
   ]],
   license = ""
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
     ["centreon-stream-connectors-lib.sc_broker"] = "modules/centreon-stream-connectors-lib/sc_broker.lua",
     ["centreon-stream-connectors-lib.sc_common"] = "modules/centreon-stream-connectors-lib/sc_common.lua",
     ["centreon-stream-connectors-lib.sc_event"] = "modules/centreon-stream-connectors-lib/sc_event.lua",
     ["centreon-stream-connectors-lib.sc_logger"] = "modules/centreon-stream-connectors-lib/sc_logger.lua",
     ["centreon-stream-connectors-lib.sc_params"] = "modules/centreon-stream-connectors-lib/sc_params.lua",
     ["centreon-stream-connectors-lib.sc_test"] = "modules/centreon-stream-connectors-lib/sc_test.lua"
   }
}
