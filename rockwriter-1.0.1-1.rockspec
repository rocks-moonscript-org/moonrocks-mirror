package = "rockwriter"
version = "1.0.1-1"
description = {
  summary = "A tool to help you create rockspecs easily!",
  homepage = "https://github.com/daelvn/rockwriter",
}
dependencies = { "filekit>=1.0", "argparse", "sirocco",  }
source = {
  url = "git://github.com/daelvn/rockwriter",
  tag = "v1.0.1",
}
build = {
  type = "none",
  install = {
    bin = { ["rockwriter"] = "rockwriter", },
  }
}
