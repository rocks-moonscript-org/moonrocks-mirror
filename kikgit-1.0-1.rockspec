package = "kikgit"
version = "1.0-1"
description = {
  summary = "It's git, but quicker",
  homepage = "https://github.com/daelvn/kikgit",
}
dependencies = { "lrunkit>=2.1", "argparse",  }
source = {
  url = "git://github.com/daelvn/kikgit",
  tag = "v1.0",
}
build = {
  type = "none",
  install = {
    bin = { ["kikgit"] = "kikgit.lua", },
  }
}
