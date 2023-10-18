package = "busted-flaky"
version = "1.0.0-1"

source = {
   url = "git://github.com/eskerda/busted-flaky",
   tag = "1.0.0"
}

description = {
   summary = "busted extension to retry flaky specs",
   detailed = [[
      busted-flaky is a busted extension for handling flaky specs by retrying
      any block a specified number of times until it succeeds.

      It adds a new block that can wrap `describe` and `it` blocks. It also
      can be used by simply tagging any block with #flaky.

      The name of the block (flaky), tag (#flaky), the number of retries and
      the output on the specs can all be configured with -Xhelper options.
   ]],
   homepage = "https://github.com/eskerda/busted-flaky",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
      ["flaky"] = "flaky.lua",
   }
}
