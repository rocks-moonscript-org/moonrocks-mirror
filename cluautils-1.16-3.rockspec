package = "cluautils"
version = "1.16-3"
source = {
    url = "git://github.com/castlele/cluautils.git",
    tag = "1.16.3"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "MIT"
}
dependencies = {
    "lua ~> 5.1",
    "json-lua >= 0.1"
}

local incDir = "./internal"

build = {
   type = "builtin",
   modules = {
      ["cluautils"] = "src/cluautils.lua",
      ["cluautils.datastructures.linkedlist"] = "src/datastructures/linkedlist.lua",
      ["cluautils.datastructures.hashmap"] = "src/datastructures/hashmap.lua",
      ["cluautils.datastructures.pair"] = "src/datastructures/pair.lua",
      ["cluautils.json"] = "src/json/json.lua",
      ["cluautils.tests"] = "src/tests.lua",
      ["cluautils.tests.base_test_case"] = "src/tests/base_test_case.lua",
      ["cluautils.file_manager"] = "src/file_manager/file_manager.lua",
      ["cluautils.string_utils"] = "src/string_utils/string_utils.lua",
      ["cluautils.table_utils"] = "src/table_utils/table_utils.lua",
      ["cluautils.functions"] = "src/functions/functions.lua",
      ["cluautils.cobject"] = "src/cobject.lua",
      ["cluautils.memory"] = {
         sources = {
            "./src/memory/memory.c"
         },
         incdirs = { incDir },
      },
      ["cluautils.thread"] = {
         sources = {
            "src/threads/thread.c",
            "src/threads/internal/cthread.c",
            "src/threads/internal/queue.c"
         },
         libdirs = { "src/threads/bin/" },
         incdirs = {
            incDir,
            "src/threads/internal/",
         },
      },
   },
   copy_directories = {
      "tests",
      "examples",
   }
}
